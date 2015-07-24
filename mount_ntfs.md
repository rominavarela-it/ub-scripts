# Mount Windows Partition (ntfs) at init

 * create mount directory

 > sudo mkdir /mnt/Windows

 > sudo chmod 777 /mnt/Windows

 * copy UUID where TYPE=ntfs, for example 507EDD5C7EDD3B82

 > sudo blkid

 > sudo nano /etc/fstab

 * edit the end of file, for instance:

    UUID=507EDD5C7EDD3B82	/mnt/Windows ntfs users,defaults	0	0
