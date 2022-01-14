echo 'blacklist r8188eu'|sudo tee -a '/etc/modprobe.d/realtek.conf'
apt install dkms
chmod +x dkms-install.sh
./dkms-install.sh
reboot
