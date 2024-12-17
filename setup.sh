# setup.sh
#!/bin/zsh

# Clone the repo if not already present
if [ ! -d ~/.config/.zsh ]; then
    git clone https://github.com/AlexNecakov/.zsh ~/.config/.zsh
else
    cd ~/.zsh
    git pull origin master
fi

# Symlink .zshrc if it doesn't exist or isn't a symlink
if [ ! -L ~/.zshrc ] || [ ! -e ~/.zshrc ]; then
    ln -sf ~/.config/.zsh/zshrc.sh ~/.zshrc
fi

echo "Zsh configuration synchronized."
