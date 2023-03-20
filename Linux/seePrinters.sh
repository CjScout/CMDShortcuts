# Usage ./seePrinters.sh <ip range> ex. "./seePrinters 10.0.0.0/24"
sudo nmap --top-ports 200 -sV --version-all -oG scan $1
clear
echo Printers:
echo
grep "//printer" scan
