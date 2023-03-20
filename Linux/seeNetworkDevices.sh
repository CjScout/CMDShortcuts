# Usage ./seeNetworkDevices.sh <ip range> ex. "./seeNetworkDevices 10.0.0.0/24"
sudo nmap -oG scan $1
clear
echo Online devices:
echo
grep "Up" scan