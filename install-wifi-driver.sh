#!/bin/sh
cd ~/Downloads
wget "https://github.com/lwfinger/rtlwifi_new/archive/master.zip" -O rtlwifi-new.zip
unzip rtlwifi_new.zip
cd rtlwifi_new-master
make
sudo make install
sudo modprobe -rv rtl8723be
sudo modprobe -v rtl8723be ant_sel=2
sudo ip link set wlo1 up
echo "options rtl8723be ant_sel=2" | sudo tee /etc/modprobe.d/50-rtl8723be.conf
