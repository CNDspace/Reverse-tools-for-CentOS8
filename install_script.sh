#!/bin/bash
#Created by Alex Zherdev for CentOS8
#Moscow Aviation Institute

sudo dnf update -y
sudo dnf install python2 -y
sudo dnf install git -y
sudo dnf install epel-release -y
sudo dnf update epel-release -y
sudo dnf config-manager --set-enabled PowerTools
sudo dnf install https://forensics.cert.org/cert-forensics-tools-release-el8.rpm -y
sudo dnf install ghidra -y
sudo dnf install radare2 -y 
sudo dnf install wireshark -y
xhost +si:localuser:root
sudo dnf install gdb -y
sudo dnf install hexedit -y
sudo dnf install tcpdump -y
sudo -H python3 -m pip install -U oletools
sudo dnf install yara -y
wget -P	~/pdf-tools https://didierstevens.com/files/software/pdf-parser_V0_7_4.zip
wget -P	~/pdf-tools https://didierstevens.com/files/software/make-pdf_V0_1_7.zip
wget -P	~/pdf-tools https://didierstevens.com/files/software/pdfid_v0_2_7.zip
wget -P	~/pdf-tools https://didierstevens.com/files/software/PDFTemplate.zip
for a in `ls ~/pdf-tools/*.zip`; do unzip -d ~/pdf-tools/ $a; done && rm ~/pdf-tools/*.zip
sudo git clone https://github.com/longld/peda.git ~/peda
sudo su
echo "source ~/peda/peda.py" >> /.gdbinit
