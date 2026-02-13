#
# ~/.bashrc
#

[[ $- != *i* ]] && return

# -= Variables / Alias =-
export PATH=$PATH:$HOME/.local/bin
alias ls='ls --color=auto'
alias grep='grep --color=auto'
# -= Terminal =-
fastfetch
# -= Oh My POsh =-
eval "$(oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/nordtron.omp.json)"
# -= Tmux =-
if command -v tmux >/dev/null 2>&1; then
  if [ -z "$TMUX" ] && [ -n "$PS1" ]; then
    exec tmux new-session -A -s main
  fi
fi

PS1='[\u@\h \W]\$ '
