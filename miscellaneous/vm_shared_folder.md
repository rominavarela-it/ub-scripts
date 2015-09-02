# Mount VirtualBox Shared Folder from init

 > mkdir VM-Shared

 > mkdir VM-Shared/ub

 > sudo chmod 777 VM-Shared/ub/

 > sudo nano /etc/rc.local

    (before exit 0)
    sudo mount -t vboxsf -o rw,uid=1000,gid=1000 VM-Shared /home/romina/VM-Shared
