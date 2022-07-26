#!/bin/bash

sudo yum install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh --unattended)"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="candy"/' ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions)/' ~/.zshrc
source ~/.zshrc
