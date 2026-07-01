#!/usr/bin/env bash
# herdr workspace picker — sesh-like fuzzy workspace switcher
# Bound to prefix+k in herdr config.toml
set -euo pipefail

die() { echo "ERROR: $*" >&2; read -rp "Press enter to close..."; exit 1; }

# ── Workspace definitions ────────────────────────────────────────────
# Format: "name|path|extra_tabs"
WORKSPACES=(
  "projects|~/projects|4"
  "grafana-assistant|~/projects/grafana-assistant-app|3"
  "2h-dagster|~/projects/twoh_dagster|3"
  "2h-semantic-layer-test|~/projects/2h-semantic-layer-test|3"
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

# ── Gather existing workspaces (name|id pairs) ─────────────────────
existing_lines=""
if raw=$(herdr workspace list 2>/dev/null); then
  existing_lines="$raw"
fi

# ── Build fzf candidate list ────────────────────────────────────────
candidates=""
for entry in "${WORKSPACES[@]}"; do
  IFS='|' read -r name path tabs <<< "$entry"
  candidates="${candidates}${name} (${path})"$'\n'
done

# ── fzf selection ────────────────────────────────────────────────────
selected=$(printf '%s' "$candidates" | sed '/^$/d' | fzf \
  --prompt="workspace > " \
  --gutter=" " \
  --highlight-line \
  --no-info \
  --reverse) || exit 0

# Extract workspace name (strip trailing path in parens)
ws_name=$(echo "$selected" | sed -E 's/ \(.*\)$//')

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

# ── Check if already open → focus it ────────────────────────────────
if [ -n "$existing_lines" ]; then
  while IFS= read -r line; do
    # Match workspace by label/name in the line
    if echo "$line" | grep -qF "$ws_name"; then
      ws_id=$(echo "$line" | awk '{print $1}')
      if [ -n "$ws_id" ]; then
        herdr workspace focus "$ws_id"
        exit 0
      fi
    fi
  done <<< "$existing_lines"
fi

# ── Create workspace ────────────────────────────────────────────────
ws_output=$(herdr workspace create --cwd "$ws_path" --label "$ws_name" --focus 2>&1) \
  || die "workspace create failed: $ws_output"

ws_id=$(echo "$ws_output" | grep -oE 'w[0-9]+' | head -1)
[ -z "$ws_id" ] && die "Could not parse workspace ID from: $ws_output"

# Create additional tabs
for ((i = 0; i < ws_tabs; i++)); do
  herdr tab create --workspace "$ws_id" --cwd "$ws_path" --no-focus 2>/dev/null || true
done
