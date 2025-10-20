# Codex CLI
# https://github.com/openai/codex
if command -v codex >/dev/null 2>&1; then
    eval "$(codex completion zsh)"
fi
