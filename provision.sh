#!/usr/bin/env bash

# controlla se esiste SIS.
if [[ ! -d /home/vagrant/sis-1.3.6.bin64 ]]; then
	echo -e "\nSposto cartella sis"
	cd /home/vagrant
	git clone https://github.com/golfhotel/sis-1.3.6-binx64.git
else
	echo "Risulta già presente sis-1.3.6.bin64"
fi

# aggiunge la variabile d'ambiente nel file .bashrc
echo 'export PATH=$PATH:/home/vagrant/sis-1.3.6.bin64/bin/' >> ~/.bashrc 