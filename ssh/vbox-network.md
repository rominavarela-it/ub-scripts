**WINDOWS CMD**
cd "C:\Program Files\Oracle\VirtualBox"
VBoxManage.exe dhcpserver add --netname intnet --ip 10.0.1.1 --netmask 255.255.255.0 --lowerip 10.0.1.100 --upperip 10.0.1.200 --enable

**VIRTUAL BOX**

 * Settings > Network > Adapter 2 (check) > Attached to: Internal Network > name: intnet

**VIRTUAL MACHINE**

 * Edit Connections ... > Connection 2 > Edit > IPV4 Settings > Method: Manual

 * Address:100.0.1.10x > Netmask:255.255.255.0 > Gateaway:100.0.1.10x

 * Disconect Connection 1 if ping doesn't work
