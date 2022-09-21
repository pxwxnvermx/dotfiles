#!/usr/bin/sh

# Copy Dotfiles

copy_dotfiles() {
    echo "Copying Dotfiles"
    mkdir -p $HOME/.config/i3 $HOME/.config/nvim $HOME/.config/polybar
    cp -r .config $HOME/.config
    cp .zshrc .vimrc .tmux.conf .tool-versions .p10k.zsh $HOME/
}


