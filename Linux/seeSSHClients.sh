# Usage ./seeSSHClients.sh <ip range> ex. "./seeSSHClients 10.0.0.0/24"
sudo nmap --top-ports 200 -sV --version-all -oG scan $1
clear
echo SSH:
echo
grep "//ssh" scan