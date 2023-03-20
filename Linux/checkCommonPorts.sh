sudo nmap --top-ports 200 -sV --version-all -oG scan $1
clear
echo Online devices:
echo
grep "Up" scan
echo
echo -------------------------------------------------------
echo Open Ports:
echo
grep "Ports: " scan
echo
echo -------------------------------------------------------
echo SSH:
echo
grep "//ssh" scan
echo
echo -------------------------------------------------------
echo HTTP:
echo
grep "//http" scan
echo
echo -------------------------------------------------------
echo HTTPS:
echo
grep "//ssl" scan
echo
echo -------------------------------------------------------
echo Printers:
echo
grep "//printer" scan