export TERM=xterm-256color
autoload -U colors && colors
PS1="%{$fg_bold[blue]%}%n@%m %{$fg[yellow]%}%d %{$reset_color%}%# "

if [[ "$OSTYPE" == "darwin"* ]]; then
    export PATH=$PATH:/Users/alexn/.cargo/bin
    source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source /opt/homebrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
    eval $(thefuck --alias)
elif [[ "$OSTYPE" == "linux"* ]]; then
    # Linux-specific settings
fi
