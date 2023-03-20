# Usage ./seeWebservers.sh <ip range> ex. "./seeWebservers 10.0.0.0/24"
sudo nmap --top-ports 200 -sV --version-all -oG scan $1
clear
echo HTTP:
echo
grep "//http" scan
echo
echo -------------------------------------------------------
echo HTTPS:
echo
grep "//ssl" scan