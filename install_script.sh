#!/bin/bash
#Created by Alex Zherdev for CentOS8
#Moscow Aviation Institute

sudo dnf update -y
#Install repos
sudo dnf install epel-release -y
sudo dnf config-manager --set-enabled PowerTools
sudo dnf install https://forensics.cert.org/cert-forensics-tools-release-el8.rpm -y
sudo dnf update -y
sudo dnf install 7z unrar python2 ghidra radare2 cutter-re wireshark gdb hexedit tcpdump yara -y #Install main tools with default packet-manager
xhost +si:localuser:root
sudo -H python3 -m pip install -U oletools
#Download pdf-tools using wget
wget -P	~/pdf-tools https://didierstevens.com/files/software/pdf-parser_V0_7_4.zip
wget -P	~/pdf-tools https://didierstevens.com/files/software/make-pdf_V0_1_7.zip
wget -P	~/pdf-tools https://didierstevens.com/files/software/pdfid_v0_2_7.zip
wget -P	~/pdf-tools https://didierstevens.com/files/software/PDFTemplate.zip
#Unzip downloaded files
for a in `ls ~/pdf-tools/*.zip`; do unzip -d ~/pdf-tools/ $a; done && rm ~/pdf-tools/*.zip
#Download and install peda for gdb
sudo git clone https://github.com/longld/peda.git ~/peda
sudo su
echo "source ~/peda/peda.py" >> /.gdbinit
