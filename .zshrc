export TERM=xterm-256color
autoload -U colors && colors
PS1="%{$fg_bold[blue]%}%n@%m %{$fg[yellow]%}%d %{$reset_color%}%# "

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

export PATH=$PATH:/Users/alexn/.cargo/bin

eval $(thefuck --alias)
