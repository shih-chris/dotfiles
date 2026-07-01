#!/usr/bin/env bash
# Context-aware herdr pane navigation.
# nvim gets all directions so it can move between editor windows first; fzf/pi
# get j/k for menu/list navigation. Everything else moves herdr panes directly.
set -euo pipefail

export PATH="/opt/homebrew/bin:$PATH"

herdr_bin="${HERDR_BIN_PATH:-herdr}"
dir=${1:?usage: herdr-nav.sh <left|right|up|down>}

case "$dir" in
  left) key="ctrl+h" ;;
  down) key="ctrl+j" ;;
  up) key="ctrl+k" ;;
  right) key="ctrl+l" ;;
  *) echo "herdr-nav: bad direction '$dir'" >&2; exit 1 ;;
esac

pane_args=(--current)
if [[ -n "${HERDR_ACTIVE_PANE_ID:-}" ]]; then
  pane_args=(--pane "$HERDR_ACTIVE_PANE_ID")
fi

info=$("$herdr_bin" pane process-info "${pane_args[@]}")
pane_id=$(jq -r '.result.process_info.pane_id' <<<"$info")
procs=$(jq -r '.result.process_info.foreground_processes[]? | .argv0, .name' <<<"$info")

send=false
if rg -qiw 'n?vim' <<<"$procs"; then
  send=true
elif [[ "$dir" == "up" || "$dir" == "down" ]] && rg -qiw '(fzf|pi)' <<<"$procs"; then
  send=true
fi

if $send; then
  "$herdr_bin" pane send-keys "$pane_id" "$key"
else
  "$herdr_bin" pane focus --direction "$dir" --pane "$pane_id"
fi
