export TERM=xterm-256color
autoload -U colors && colors
PS1="%{$fg_bold[blue]%}%n@%m %{$fg[yellow]%}%d %{$reset_color%}%# "

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH=$PATH:/Users/alexn/.cargo/bin

eval $(thefuck --alias)

# For Ctrl + Right Arrow
bindkey '^[[1;3C' forward-word

# For Ctrl + Left Arrow
bindkey '^[[1;3D' backward-word
