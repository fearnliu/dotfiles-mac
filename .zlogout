if [[ -n "$SSH_AGENT_PID" ]]; then
  ssh-add -D 2>/dev/null
  kill "$SSH_AGENT_PID" 2>/dev/null
  unset SSH_AGENT_PID
  unset SSH_AUTH_SOCK
fi

if [[ -f "$FNM_MULTISHELL_PATH" ]]; then
  rm -rf -- "$FNM_MULTISHELL_PATH"
fi
