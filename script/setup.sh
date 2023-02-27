
sudo pacman -S neovim neofetch sxhkd bspwm feh zsh thunar bluez picom playerctl 

#zsh install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k

sudo pacman -S polybar rofi npm rust firewalld
sudo pacman -S adobe-source-han-sans-cn-fonts 

yay -S spotify blugon nerd-fonts-complete-starship

systemctl enable firewalld.service
