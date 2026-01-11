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
eval "$(oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/nordtron.omp.json)"

PS1='[\u@\h \W]\$ '
