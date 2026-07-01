#!/usr/bin/env bash
# Context-aware herdr pane navigation.
# h/l always move herdr panes. j/k are forwarded into nvim/fzf/pi so those apps
# can handle menus; nvim normal-mode mappings hand j/k back to herdr.
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
if [[ "$dir" == "up" || "$dir" == "down" ]] && rg -qiw '(n?vim|fzf|pi)' <<<"$procs"; then
  send=true
fi

if $send; then
  "$herdr_bin" pane send-keys "$pane_id" "$key"
else
  "$herdr_bin" pane focus --direction "$dir" --pane "$pane_id"
fi
