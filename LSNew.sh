sudo true
curl -s https://raw.githubusercontent.com/linux-surface/linux-surface/master/pkg/keys/surface.asc | sudo pacman-key --add -
sudo pacman-key --finger 56C464BAAC421453
sleep 3
sudo pacman-key --lsign-key 56C464BAAC421453
sudo echo "[linux-surface]" >> /etc/pacman.conf
sudo echo "Server = https://pkg.surfacelinux.com/arch/" >> /etc/pacman.conf
yay -Syu linux-surface linux-surface-headers iptsd gwenview power-profiles-daemon mpv kdenlive gimp firefox okular libreoffice-fresh --needed --noconfirm
sudo systemctl enable iptsd
yay -Rns kdeconnect --noconfirm
sudo sed -i '/#MAKEFLAGS=/c\MAKEFLAGS="-j$(nproc)"' /etc/makepkg.conf
echo Done
echo reminder: GRUB_DEFAULT=(index starts with 0)
echo "/boot/grub/grub.cfg"
echo optionally https://addons.mozilla.org/en-US/firefox/addon/arch-linux-aur-search-webext/
echo reminder: make libreoffice not look shit
sleep 1000
