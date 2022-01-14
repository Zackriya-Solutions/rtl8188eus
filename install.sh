echo 'blacklist r8188eu'|sudo tee -a '/etc/modprobe.d/realtek.conf'
apt install dkms -Y
chmod +x dkms-install.sh
./dkms-install.sh
insmod 8188eu.ko
wget -O - https://www.kismetwireless.net/repos/kismet-release.gpg.key | sudo apt-key add -
echo "deb https://www.kismetwireless.net/repos/apt/release/$(lsb_release -cs) $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/kismet.list
apt-get update
apt-get install kismet
usermod -aG kismet pi

reboot
