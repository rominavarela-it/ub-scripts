HOSTS = romina@100.0.1.101 romina@100.0.1.102

ADD_HOSTS += $(foreach host,$(HOSTS),ssh $(host);)
PASS_KEY += $(foreach host,$(HOSTS),ssh-copy-id $(host);)

all:
	sudo apt-get -y install ssh
	sudo apt-get -y install openssh-server

add-hosts:
	$(ADD_HOSTS)

master:
	ssh-keygen -t rsa
	$(PASS_KEY)
