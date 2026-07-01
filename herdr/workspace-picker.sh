#!/usr/bin/env bash
# herdr workspace picker — sesh-like fuzzy workspace switcher
# Bound to prefix+ctrl+k in herdr config.toml
set -euo pipefail

die() { echo "ERROR: $*" >&2; read -rp "Press enter to close..."; exit 1; }

# ── Workspace definitions ────────────────────────────────────────────
# Format: "name|path|extra_tabs"
WORKSPACES=(
  "projects|~/projects|4"
  "grafana-assistant|~/projects/grafana-assistant-app|3"
  "2h-dagster|~/projects/twoh_dagster|3"
  "2h-meridian-test-data|~/projects/2h-meridian-test-data|5"
  "2h-team|~/projects/2h-team|3"
  "2h-ops|~/projects/2h-ops|3"
  "daas|~/projects/daas|3"
  "2h-competitive|~/projects/2h-competitive|3"
  "oss-data-stack|~/projects/oss-data-stack|3"
  "grafana analytics|~/projects/grafana_analytics|2"
  "statistical rethinking|~/projects/statistical_rethinking_2026|2"
  "analytics agent|~/projects/grafana-analytics-agent|2"
  "product analytics|~/projects/product_analytics|2"
  "dbt|~/projects/dbt_grafanalabs_global|2"
  "prefect|~/projects/prefect|2"
  "prefect2|~/projects/prefect2|2"
  "deployment_tools|~/projects/deployment_tools|2"
  "revops|~/projects/revops|2"
  "ai-kit|~/projects/ai-kit|2"
  "dotfiles|~/projects/dotfiles|2"
  "shih-os|~/Documents/shih-os|2"
  "notetaking|~/Documents/Grafana Labs|1"
  "grafana|~/projects/grafana|2"
  "default|~|0"
)

# ── Gather existing workspaces ──────────────────────────────────────
existing_json=$(herdr workspace list 2>/dev/null || echo '{}')

# ── Helpers ─────────────────────────────────────────────────────────
agent_label() {
  local status="$1"
  case "$status" in
    working) echo "⚡ working" ;;
    blocked) echo "⏸  blocked" ;;
    idle)    echo "●  idle" ;;
    *)       echo "·  $status" ;;
  esac
}

# ── Build fzf candidate list ────────────────────────────────────────
# Use a hidden delimiter (tab char) to separate display name from fzf-searchable name
candidates=""
max_name_len=0
for entry in "${WORKSPACES[@]}"; do
  IFS='|' read -r name _ _ <<< "$entry"
  len=${#name}
  if [ "$len" -gt "$max_name_len" ]; then max_name_len=$len; fi
done

active_candidates=""
inactive_candidates=""
for entry in "${WORKSPACES[@]}"; do
  IFS='|' read -r name path tabs <<< "$entry"
  total_tabs=$((tabs + 1))  # +1 for the first tab created with workspace

  # Check if workspace already exists
  ws_info=$(echo "$existing_json" | jq -r --arg n "$name" \
    '.result.workspaces[]? | select(.label == $n) | "\(.tab_count)|\(.agent_status)"' 2>/dev/null || true)

  if [ -n "$ws_info" ]; then
    agent_status=$(echo "$ws_info" | cut -d'|' -f2)
    line=$(printf "● %-${max_name_len}s   %s" "$name" "$(agent_label "$agent_status")")
    active_candidates="${active_candidates}${line}"$'\n'
  else
    line=$(printf "  %-${max_name_len}s" "$name")
    inactive_candidates="${inactive_candidates}${line}"$'\n'
  fi
done
candidates="${active_candidates}${inactive_candidates}"

# ── fzf selection ────────────────────────────────────────────────────
selected=$(printf '%s' "$candidates" | sed '/^$/d' | fzf \
  --prompt="workspace > " \
  --gutter=" " \
  --highlight-line \
  --no-info \
  --reverse) || exit 0

# Extract workspace name: strip leading marker, then anything after 2+ trailing spaces
ws_name=$(echo "$selected" | sed -E 's/^[●[:space:]]*//' | sed -E 's/[[:space:]]{2,}.*$//' | sed -E 's/[[:space:]]+$//')

# ── If workspace exists → focus it ──────────────────────────────────
ws_id=$(echo "$existing_json" | jq -r --arg n "$ws_name" \
  '.result.workspaces[]? | select(.label == $n) | .workspace_id' 2>/dev/null || true)

if [ -n "$ws_id" ]; then
  herdr workspace focus "$ws_id" >/dev/null 2>&1
  exit 0
fi

# ── Look up definition ──────────────────────────────────────────────
ws_path=""
ws_tabs=0
for entry in "${WORKSPACES[@]}"; do
  IFS='|' read -r name path tabs <<< "$entry"
  if [ "$name" = "$ws_name" ]; then
    ws_path="${path/#\~/$HOME}"
    ws_tabs="$tabs"
    break
  fi
done
[ -z "$ws_path" ] && die "Unknown workspace: $ws_name"

# ── Create workspace (first tab + pane created automatically) ───────
ws_output=$(herdr workspace create --cwd "$ws_path" --label "$ws_name" --focus 2>&1) \
  || die "workspace create failed: $ws_output"

ws_id=$(echo "$ws_output" | jq -r '.result.workspace.workspace_id' 2>/dev/null)
[ -z "$ws_id" ] || [ "$ws_id" = "null" ] && die "Could not parse workspace ID from: $ws_output"

# Get the first tab's pane ID — this is where vim will run
first_pane=$(echo "$ws_output" | jq -r '.result.root_pane.pane_id')

# ── Create additional tabs ──────────────────────────────────────────
third_pane=""
for ((i = 0; i < ws_tabs; i++)); do
  tab_output=$(herdr tab create --workspace "$ws_id" --cwd "$ws_path" --no-focus 2>&1) || true
  # Capture the 3rd tab's pane (i==1 → second extra tab → tab 3 overall)
  if [ "$i" -eq 1 ]; then
    third_pane=$(echo "$tab_output" | jq -r '.result.root_pane.pane_id' 2>/dev/null || true)
  fi
done

# ── Launch apps ─────────────────────────────────────────────────────
# Tab 1: vim
if [ -n "$first_pane" ] && [ "$first_pane" != "null" ]; then
  herdr pane send-text "$first_pane" "nvim_cshih"$'\n' 2>/dev/null || true
fi

# Tab 3: opencode
if [ -n "$third_pane" ] && [ "$third_pane" != "null" ]; then
  herdr pane send-text "$third_pane" "opencode"$'\n' 2>/dev/null || true
fi
