HOSTS = romina@100.0.1.101 romina@100.0.1.102

ADD_HOSTS += $(foreach host,$(HOSTS),ssh $(host);)
PASS_KEY += $(foreach host,$(HOSTS),scp ~/.ssh/id_rsa.pub $(host):~/.ssh/id_rsa.pub;)

all:
	sudo apt-get -y install ssh
	sudo apt-get -y install openssh-server

add-hosts:
	$(ADD_HOSTS)

master:
	ssh-keygen -t rsa
	$(PASS_KEY)

slave:
	cat ~/.ssh/id_rsa.pub >> authorized_keys
