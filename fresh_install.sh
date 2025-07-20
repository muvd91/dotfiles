cd ~/data
git clone https://github.com/david-eliseo/dotfiles.git
cd

# Variables
THEMES=~/local/fonts-and-themes
FONTS_DIR=~/.local/share/fonts

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/catppuccin/zsh-syntax-highlighting.git

# Gnome Tweak Tools
sudo dnf -y install gnome-tweaks

# Enable Free and NonFree RPM Fusion repositories
sudo dnf install \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1

# Fonts
#   SauceCodeProNerdFont
git clone https://github.com/ryanoasis/nerd-fonts/releases/latest/download/SourceCodePro.zip
#   FontAwesome
git clone https://github.com/FortAwesome/Font-Awesome.git
#   YosemiteSanFranciscoFont
git clone https://github.com/supermarin/YosemiteSanFranciscoFont.git
#   Move fonts to FONTS_DIR and install
mkdir -p $FONTS_DIR
fc-cache -fv

# Gnome themes and fonts
git clone https://github.com/vinceliuice/matcha.git
git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme.git
git clone https://github.com/PapirusDevelopmentTeam/papirus-folders.git
$THEMES/matcha/install.sh
$THEMES/papirus-icon-theme/install.sh
$THEMES/papirus-folders/install.sh
$THEMES/papirus-folders/papirus-folders -C teal --theme Papirus-Dark
#   Arc theme
sudo dnf -y install arc-theme
#   Moka icons
dnf install -y moka-icon-theme


# Applications
#   Vim
sudo dnf -y install vim
sudo dnf -y install vim-X11
#   Neovim
sudo dnf -y install neovim
#  SDKMan
curl -s "https://get.sdkman.io" | bash
#   Meld
sudo dnf -y install meld
#   The silver searcher
sudo dnf -y install the_silver_searcher
#   xclip
sudo dnf -y install xclip
#   Zathura
sudo dnf install -y zathura
sudo dnf install -y zathura-pdf-mupdf
sudo dnf install -y xdotool
#   VLC
sudo dnf -y install vlc
#   FZF
sudo dnf -y install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
#   Codecs
sudo dnf -y group install Multimedia
#   Spotify
sudo dnf -y install snapd
snap install spotify
#   Note-taking apps
sudo dnf -y install freemind
sudo dnf -y install dia
#   Inkscape
sudo dnf install -y inkscape
#   TLP -- power saving for laptops (optional)
sudo dnf -y install tlp
#   IRC
sudo dnf -y install irssi
# C, C++ development tools
sudo dnf install -y cmake gcc-c++ make python3-devel

# Shells
#   Fish and OhMyFish
sudo dnf -y install fish
curl -L https://get.oh-my.fish | fish
#   Zsh and OhMyZsh
sudo dnf -y install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#   OhMyBash
sh -c "$(curl -fsSL https://raw.github.com/ohmybash/oh-my-bash/master/tools/install.sh)"
ln -sf $HOME/data/dotfiles/configs/oh-my-bash .bashrc
#   Set your user shell
sudo usermod --shell /bin/<shell> $USER

# Config files
cd
#  General
ln -sf $HOME/data/dotfiles/configs/profile .profile
ln -sf $HOME/data/dotfiles/configs/environment .environment
ln -sf $HOME/data/dotfiles/configs/commonrc .commonrc
#  bash
ln -sf $HOME/data/dotfiles/configs/bash/bashrc .bashrc
ln -sf $HOME/data/dotfiles/configs/bash/bash_profile .bash_profile
#  zsh
ln -sf $HOME/data/dotfiles/configs/zsh/oh-my-zsh .zshrc
ln -sf $HOME/data/dotfiles/configs/zsh/zprofile .zprofile

ln -sf $HOME/data/dotfiles/configs/fzffn.sh .fzffn
ln -sf $HOME/data/dotfiles/configs/gitconfig .gitconfig
ln -sf $HOME/data/dotfiles/configs/inputrc .inputrc
ln -sf $HOME/data/dotfiles/configs/tmux.conf .tmux.conf
ln -sf $HOME/data/dotfiles/configs/agignore .agignore
ln -sf $HOME/data/dotfiles/configs/Xmodmap .Xmodmap
ln -sf $HOME/data/dotfiles/vimrc/modes/devel.vimrc .vimrc

ln -sf $HOME/data/dotfiles/gnome/android-studio.desktop .local/share/applications
ln -sf $HOME/data/dotfiles/gnome/firefox-private.desktop .local/share/applications
ln -sf $HOME/data/dotfiles/gnome/intellij.desktop .local/share/applications
ln -sf $HOME/data/dotfiles/gnome/pycharm.desktop .local/share/applications

# i3 config files
mkdir -p .config/i3
mkdir -p .config/rofi
ln -sf $HOME/data/dotfiles/configs/i3/i3config ~/.config/i3/config
ln -sf $HOME/data/dotfiles/configs/i3/rofi/config.rasi ~/.config/rofi/config.rasi
ln -sf $HOME/data/dotfiles/configs/i3/i3blocks.conf ~/.config/i3/i3blocks.conf

## Uncategorized
# i3 Configuration
sudo dnf install -y i3 i3status dmenu i3lock xbacklight feh conky
sudo dnf install -y pasystray
sudo dnf install -y light
sudo dnf install -y lxappearance
sudo dnf install -y rofi
sudo dnf install -y network-manager-applet

# ACPI
sudo dnf -y install acpi

# SYSSTAT
sudo dnf -y install sysstat

sudo dnf -y copr enable vladius/i3block
sudo dnf install i3blocks

# Pavucontrol
sudo dnf -y install pavucontrol


# Temporary sound fix for Lenovo X1
➜  ~ cat /etc/modprobe.d/alsa.conf
options snd-intel-dspcfg dsp_driver=1

# Asus with nVidia that does not work with nouveau...
rd.driver.blacklist=nouveau

# RPM Fusion nVidia drivers
dnf install xorg-x11-drv-nvidia akmod-nvidia
dnf install xorg-x11-drv-nvidia-cuda #optional for cuda/nvdec/nvenc support
dnf update -y
dnf -y install akmod-nvidia acpi
dnf -y install akmod-bbswitch bumblebee primus
# then proceed to install bumblebee


# i3wm useful commands
# Set sound to HDMI monitor
pacmd set-card-profile 0 output:hdmi-stereo-extra1
# Turn off laptop monitor
xrandr --output eDP-1 --off
# Network Manager terminal
nmcli
