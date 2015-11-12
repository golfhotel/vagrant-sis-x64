#!/usr/bin/env bash

	# Update all of the package references before installing anything
	echo "Running apt-get update..."
	apt-get update -y
	echo -e "Installo Git." 
	sudo apt-get install -y git
	
# controlla se esiste SIS.
if [[ ! -d /home/vagrant/sis-1.3.6-binx64 ]]; then
	echo -e "\nInstallo Sis"
	cd /home/vagrant
	git clone https://github.com/golfhotel/sis-1.3.6-binx64.git
else
	echo "Risulta già presente sis-1.3.6.bin64"
fi

# aggiunge la variabile d'ambiente nel file .bashrc
echo 'export PATH=$PATH:/home/vagrant/sis-1.3.6-binx64/sis-1.3.6.bin64/bin/' >> ~/.bashrc 
