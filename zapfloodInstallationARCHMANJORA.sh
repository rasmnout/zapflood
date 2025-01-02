sudo pacman -Syu python python-pip git wget unzip zip --noconfirm
sudo pip install colorama scapy --break-system-packages
wget https://raw.githubusercontent.com/rasmnout/zapflood/main/zapfloodConsole.zip
unzip zapfloodConsole.zip
mv zapflood/ zapfloodconsole/
sudo mv zapfloodconsole/ /usr/local/bin/
rm zapfloodConsole.zip
sudo chmod +x /usr/local/bin/zapfloodconsole
sudo touch /usr/local/bin/zapflood
echo "#!/bin/bash" | sudo tee /usr/local/bin/zapflood
echo 'python3 /usr/local/bin/zapfloodconsole/zapflood.py "$@"' | sudo tee -a /usr/local/bin/zapflood
sudo chmod +x /usr/local/bin/zapflood
zapflood --help
