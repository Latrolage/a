sudo true
curl -s https://raw.githubusercontent.com/linux-surface/linux-surface/master/pkg/keys/surface.asc \
    | sudo pacman-key --add -
sudo pacman-key --finger 56C464BAAC421453
sleep 5
sudo pacman-key --lsign-key 56C464BAAC421453
sudo echo "[linux-surface]" >> /etc/pacman.conf
sudo echo "Server = https://pkg.surfacelinux.com/arch/" >> /etc/pacman.conf
sudo pacman -Syu linux-surface linux-surface-headers iptsd
sudo systemctl enable iptsd
sudo sed -i '/#MAKEFLAGS=/c\MAKEFLAGS="-j$(nproc)"' /etc/makepkg.conf

echo Done
echo reminder: GRUB_DEFAULT=(index starts with 0)
echo "/boot/grub/grub.cfg"
sleep 100
