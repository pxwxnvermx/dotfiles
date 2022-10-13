
# Things installed under this script
# zsh


# ohmyzsh
install_omz () {
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

# powerline10k
install_p10k () {
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
}

# neovim
install_nvim () {}

# asdf
install_asdf () {}



