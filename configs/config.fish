if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/.environment

fish_vi_key_bindings

bind --mode default \cp history-search-backward
bind --mode default \cn history-search-forward

bind --mode insert \cp history-search-backward
bind --mode insert \cn history-search-forward

bind --mode insert \b backward-kill-bigword

alias vim=vimx
alias vimv="vimx -u ~/data/dotfiles/vimrc/vanilla/common.vimrc"
alias vimuml="vimx -u ~/data/dotfiles/vimrc/modes/plantuml.vimrc"
alias vimlatex="vimx -u ~/data/dotfiles/vimrc/modes/latex.vimrc"
alias notes="vimx -u ~/data/dotfiles/vimrc/modes/wiki.vimrc"
alias vimmd="vimx -u ~/data/dotfiles/vimrc/modes/markdown.vimrc"
alias vimpy="vimx \`mktemp\`.py"
alias vimkts="vimx \`mktemp -u\`.kts"
alias ronotes="vimx -R -u ~/data/dotfiles/vimrc/modes/wiki.vimrc"

alias vim_light="echo light > ~/._background"
alias vim_dark="echo dark > ~/._background"

# Backgroun env var for vim
if test -f ~/._background
  set -x BACKGROUND (cat ~/._background)
else
  set -x BACKGROUND "dark"
end

if [ "$BACKGROUND" = 'light' ]
  set -x LS_COLORS {$LS_COLORS}:'ln=7;35'
end

alias watch="watch "

# Custom aliases
# Kubernetes
alias kapp="kubectl apply -f"
alias kgp="kubectl get pods"
alias kdel="kubectl delete"
alias kds="kubectl delete service"
alias kdd="kubectl delete deployment"
alias kl="kubectl logs"
alias klf="kubectl logs -f"
alias kdesp="kubectl describe pod"
alias kdesd="kubectl describe deployment"
alias kdess="kubectl describe service"


function _install_nvm
  # NVM settings
  set -x NVM_DIR "$HOME/.config/nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
end

#
# Not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon


