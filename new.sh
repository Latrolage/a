sudo pacman -S base-devel git --needed --noconfirm
cd /opt
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R $USER: ./yay
cd yay
makepkg -si
yay -Syu gwenview mpv kdenlive gimp firefox-nightly okular libreoffice-fresh noto-color-emoji-fontconfig  --needed --noconfirm
yay -Sy power-profiles-daemon
