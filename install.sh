killall gimp &
wget -O ./photogimp.zip "https://github.com/Diolinux/PhotoGIMP/releases/download/1.0/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip" -o ./photogimp.zip
unzip ./photogimp.zip
mv "PhotoGIMP by Diolinux v2020 for Flatpak" ./photogimp
rm -rf ~/.config/GIMP
cp ./photogimp/.var/app/org.gimp.GIMP/config/GIMP ~/.config/ -r
cp ./photogimp/.var/app/org.gimp.GIMP/config/gtk-2.0/gtkfilechooser.ini ~/.config/gtk-2.0/
