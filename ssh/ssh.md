**1. For each node, install SSH**

 > sudo apt-get install ssh openssh-server

**2. At master, generate key**

 > ssh-keygen -t rsa
 
 *For each node*
 
 > ssh-copy-id node@100.0.1.x

**3. For each node, associate node-name to ip**

 > nano /etc/hosts

Example hosts:

    10.0.1.101	romina1-VirtualBox

 > nano ~/.ssh/config
 
Example config:
 
    Host romina1-VirtualBox

        Hostname 10.0.1.101
 
        User romina1

