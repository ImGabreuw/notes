git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

cd ~/Downloads && git clone https://github.com/ibnYusrat/my-linux-setup.git
FONTS_DIR=$HOME/.fonts
if [ ! -d "$FONTS_DIR"]; then
  mkdir $HOME/.fonts
fi
cp my-linux-setup/powerline-fonts/* ~/.fonts

# Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc