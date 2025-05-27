# setup.sh
#!/bin/zsh

# Clone the repo if not already present
pushd ~/.config
if [ ! -d ./.zsh ]; then
    git clone https://github.com/AlexNecakov/.zsh ~/.config/.zsh
    pushd ./.zsh
else
    pushd ./.zsh
    git pull origin master
fi

# Symlink .zshrc if it doesn't exist or isn't a symlink
if [ ! -L ~/.zshrc ] || [ ! -e ~/.zshrc ]; then
    ln -sf ~/.config/.zsh/.zshrc ~/.zshrc
fi

popd
popd

echo "Zsh configuration synchronized."
