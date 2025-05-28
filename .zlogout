if [[ -n "$SSH_AGENT_PID" ]]; then
  ssh-add -D
  kill "$SSH_AGENT_PID" 2>/dev/null
  unset SSH_AGENT_PID
  unset SSH_AUTH_SOCK
fi


[[ -n "$FNM_MULTISHELL_PATH" && -f "$FNM_MULTISHELL_PATH" ]] && rm -rf "$FNM_MULTISHELL_PATH"
