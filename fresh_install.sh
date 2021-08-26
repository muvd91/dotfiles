cd ~/data
git clone https://github.com/david-eliseo/dotfiles.git

cd
# Gnome Tweak Tools
sudo dnf -y install gnome-tweaks

# Enable Free and NonFree RPM Fusion repositories
sudo dnf -y install \
    https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Gnome themes and fonts
THEMES=~/local/fonts-and-themes
FONTS_DIR=~/.local/share/fonts
mkdir -p $THEMES
mkdir -p $FONTS_DIR
cd $THEMES
wget --show-progress -O ./iosveka.zip https://github.com/be5invis/Iosevka/releases/download/v3.0.0-rc.5/01-iosevka-3.0.0-rc.5.zip
wget --show-progress -O ./iosveka-term.zip https://github.com/be5invis/Iosevka/releases/download/v3.0.0-rc.5/03-iosevka-term-3.0.0-rc.5.zip
unzip iosveka.zip -d ./iosveka
unzip iosveka-term.zip -d ./iosveka-term
rm *.zip
git clone https://github.com/vinceliuice/matcha.git
git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme.git
git clone https://github.com/PapirusDevelopmentTeam/papirus-folders.git
git clone https://github.com/powerline/fonts.git
git clone https://github.com/FortAwesome/Font-Awesome.git
git clone https://github.com/supermarin/YosemiteSanFranciscoFont.git

$THEMES/matcha/install.sh
$THEMES/papirus-icon-theme/install.sh
$THEMES/papirus-folders/install.sh
$THEMES/papirus-folders/papirus-folders -C teal --theme Papirus-Dark

mkdir -p $FONTS_DIR
cd $THEMES
cp iosveka/ttf/*.ttf $FONTS_DIR
cp iosveka-term/ttf/*.ttf $FONTS_DIR
cp fonts/LiberationMono/Literation\ Mono\ Powerline\ Bold\ Italic.ttf $FONTS_DIR
cp fonts/LiberationMono/Literation\ Mono\ Powerline\ Bold.ttf $FONTS_DIR
cp fonts/LiberationMono/Literation\ Mono\ Powerline\ Italic.ttf $FONTS_DIR
cp fonts/LiberationMono/Literation\ Mono\ Powerline.ttf $FONTS_DIR
cp YosemiteSanFranciscoFont/*.ttf $FONTS_DIR

cp Font-Awesome/otfs/*.otf $FONTS_DIR
cd
fc-cache -fv

# Arc theme
sudo dnf -y install arc-theme

# Moka icons
dnf config-manager --add-repo https://download.opensuse.org/repositories/home:snwh:moka/Fedora_25/home:snwh:moka.repo
dnf install -y moka-icon-theme

# YCM
sudo dnf -y install cmake gcc-c++ make python3-devel

# Vim
sudo dnf -y install vim
sudo dnf -y install vim-X11

# The silver searcher
sudo dnf -y install the_silver_searcher

# Shells

# Fish and OhMyFish
sudo dnf -y install fish
curl -L https://get.oh-my.fish | fish

# Zsh and OhMyZsh
sudo dnf -y install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# OhMyBash
sh -c "$(curl -fsSL https://raw.github.com/ohmybash/oh-my-bash/master/tools/install.sh)"
ln -sf $HOME/data/dotfiles/configs/oh-my-bash .bashrc


# Set your user shell
sudo usermod --shell /bin/<shell> $USER

# FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install


# Config files
cd
ln -sf $HOME/data/dotfiles/configs/profile .profile
ln -sf $HOME/data/dotfiles/configs/environment .environment
ln -sf $HOME/data/dotfiles/configs/fzffn.sh .fzffn
ln -sf $HOME/data/dotfiles/configs/gitconfig .gitconfig
ln -sf $HOME/data/dotfiles/configs/bashrc .bashrc
ln -sf $HOME/data/dotfiles/configs/commonrc .commonrc
ln -sf $HOME/data/dotfiles/configs/inputrc .inputrc
ln -sf $HOME/data/dotfiles/configs/tmux.conf .tmux.conf
ln -sf $HOME/data/dotfiles/configs/zshrc .zshrc
ln -sf $HOME/data/dotfiles/configs/agignore .agignore
ln -sf $HOME/data/dotfiles/configs/Xmodmap .Xmodmap
ln -sf $HOME/data/dotfiles/vimrc/modes/devel.vimrc .vimrc

# i3 config files
mkdir -p .config/i3
mkdir -p .config/rofi
ln -sf $HOME/data/dotfiles/configs/i3/i3config ~/.config/i3/config
ln -sf $HOME/data/dotfiles/configs/i3/rofi/config.rasi ~/.config/rofi/config.rasi
ln -sf $HOME/data/dotfiles/configs/i3/i3blocks.conf ~/.config/i3/i3blocks.conf

# xclip
sudo dnf -y install xclip

# VLC
sudo dnf -y install vlc

# TLP
sudo dnf -y install tlp

# Codecs
sudo dnf -y group install Multimedia

# Spotify
sudo dnf -y install snapd
snap install spotify

# Note-taking apps
sudo dnf -y install freemind
sudo dnf -y install dia

# IRC
sudo dnf -y install irssi

# C, C++ development tools
sudo dnf install -y cmake gcc-c++ make python3-devel

# Java JDK 8
sudo dnf install -y java-1.8.0-openjdk-devel

# Java JDK latest
sudo dnf install -y java-latest-openjdk-devel.x86_64

# MongoDB

# Meld
sudo dnf -y install meld


# Lombok
curl https://projectlombok.org/downloads/lombok.jar --output ~/bin/lombok.jar
LOMBOK_PATH=~/bin/lombok.jar

# Docker
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf -y install docker-ce docker-ce-cli containerd.io

# Zathura
sudo dnf install -y zathura
sudo dnf install -y zathura-pdf-mupdf
sudo dnf install -y xdotool

# Inkscape
sudo dnf install -y inkscape

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
