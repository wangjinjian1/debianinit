#!/bin/bash
mv /etc/apt/sources.list /etc/apt/sources.list.back
echo 'deb http://mirrors.aliyun.com/debian stretch main contrib non-free' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/debian stretch main contrib non-free' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/debian stretch-updates main contrib non-free' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/debian stretch-updates main contrib non-free' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/debian-security stretch/updates main contrib non-free' >> /etc/apt/sources.list
echo 'deb-src http://mirrors.aliyun.com/debian-security stretch/updates main contrib non-free' >> /etc/apt/sources.list
apt update
apt install -y curl git vim zsh wget
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cp  -f ./.zshrc ~/.zshrc
source ~/.zshrc
chsh -s /bin/zsh
exec $SHELL


