sudo apt install python3 python3-pip python3-scapy git wget unzip zip -y
sudo pip3 install colorama scapy --break-system-packages
wget https://raw.githubusercontent.com/rasmnout/zapflood/main/zapfloodConsole.zip
unzip zapfloodConsole.zip
mv zapflood/ zapfloodconsole/
mv zapfloodconsole/ /usr/local/bin/
rm zapfloodConsole.zip
sudo chmod +x /usr/local/bin/zapfloodconsole
touch /usr/local/bin/zapflood
echo "#!/bin/bash" > /usr/local/bin/zapflood
echo 'python3 zapfloodconsole/zapflood.py "$@"' >> /usr/local/bin/zapflood
sudo chmod +x /usr/local/bin/zapflood
zapflood --help
