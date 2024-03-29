#!/bin/bash

cd /home/pi
if [ -d /home/pi/tmp ]; then
        sudo rm -R /home/pi/tmp
        mkdir /home/pi/tmp
else
        mkdir /home/pi/tmp
fi
cd tmp
#Downloading and copying emulators configs
#echo "Download and copy emulators configs"
#sleep 2
#~/scripts/github-downloader.sh https://github.com/julenvitoria/Kelboy-ConfigsRemaps/tree/master/emulators
#sudo cp -R emulators /opt/retropie/
#Downloading and copying systems-games configs and remaps
echo "Download and copy systems-games configs and remaps"
sleep 2
~/scripts/github-downloader.sh https://github.com/julenvitoria/Kelboy-ConfigsRemaps/tree/master/configs
cp -R configs /opt/retropie/
cd ..
rm -r tmp
