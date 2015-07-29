all:
	#repos	
	sudo add-apt-repository ppa:webupd8team/atom
	sudo add-apt-repository ppa:webupd8team/java
	sudo add-apt-repository ppa:costales/folder-color
	#
	sudo apt-get -y update
	sudo apt-get -y upgrade
	#apps
	sudo apt-get install -y chromium-browser
	echo "chromium-browser" >> installed.txt
	sudo apt-get install -y atom
	echo "atom" >> installed.txt
	sudo apt-get install -y ubuntu-restricted-extras
	echo "ubuntu-restricted-extras" >> installed.txt
	sudo apt-get install -y oracle-java8-installer
	echo "java8" >> installed.txt
	sudo apt-get install -y openjdk-8-jdk
	echo "jdk8" >> installed.txt
	sudo apt-get install -y g++
	echo "g++" >> installed.txt
	sudo apt-get install -y indicator-multiload
	echo "indicator-multiload" >> installed.txt
	sudo apt-get install -y indicator-cpufreq
	echo "indicator-cpufreq" >> installed.txt
	sudo apt-get install -y compizconfig-settings-manager
	echo "compizconfig-settings-manager" >> installed.txt
	sudo apt-get install -y compiz-plugins compiz-plugins-extra
	echo "compiz-plugins\ncompiz-plugins-extra" >> installed.txt
	sudo apt-get install -y folder-color
	echo "folder-color" >> installed.txt
	sudo apt-get install -y git
	echo "git" >> installed.txt
	sudo apt-get install -y ipython
	echo "ipython" >> installed.txt
	sudo apt-get install -y maven2
	echo "maven2" >> installed.txt
	sudo apt-get install -y kolourpaint4
	echo "kolourpaint4" >> installed.txt
	sudo apt-get install -y qbittorrent
	echo "qbittorrent" >> installed.txt

vm:
	#repos
	sudo add-apt-repository ppa:webupd8team/java
	#
	sudo apt-get -y update
	sudo apt-get -y upgrade
	#apps
	sudo apt-get install -y ubuntu-restricted-extras
	echo "ubuntu-restricted-extras" >> installed.txt
	sudo apt-get install -y oracle-java8-installer
	echo "java8" >> installed.txt
	sudo apt-get install -y openjdk-8-jdk
	echo "jdk8" >> installed.txt
	sudo apt-get install -y g++
	echo "g++" >> installed.txt
	sudo apt-get install -y git
	echo "git" >> installed.txt
	sudo apt-get install -y ipython
	echo "ipython" >> installed.txt
	sudo apt-get install -y virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
	echo "virtual box plugins" >> installed.txt
