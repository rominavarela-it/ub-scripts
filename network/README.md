## restart network
/etc/init.d/networking restart

## control interface
ifconfig eth0 up|down
sudo ifconfig eth1 192.168.56.10 netmask 255.255.255.0
sudo route add default gw 192.168.56.1 eth1
route -n
