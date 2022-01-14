sudo cp kismet_site.conf /etc/kismet/kismet_site.conf

ip link set wlan1 down
iw wlan1 set monitor none
ip link set wlan1 up
kismet
