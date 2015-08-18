if [[ "$OSTYPE" == darwin* ]]; then
  alias tmux='tmux -f ~/.tmux-osx.conf'
fi

# aliases for Tmux
alias tmux='tmux -2'
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

