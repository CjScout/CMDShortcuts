@echo off

:: Display Master Catagories
echo Select Catagory
echo 1) Network Tools
echo 2) Disk Tools
echo 3) Other Utilities

set /p "catagory=Enter Catagory #: "

IF "%catagory%"=="1" GOTO Cat1
IF "%catagory%"=="2" GOTO Cat2
IF "%catagory%"=="3" GOTO Cat3

::---------------------------------------
:Cat1
:: Display Options

echo Network Tools: Select Tool
echo 1) Display All Network Information
echo 2) See DNS Server
echo 3) Flush DNS
echo 4) Get New IP
echo 5) Lookup IP
echo 6) Traceroute
echo 7) See DNS Cache
echo 8) See MAC Addresses
echo 9) See Interfaces
echo 10) See IP
echo 11) Turn Off Windows Firewall
echo 12) Turn On Windows Firewall
echo 13) Ping IP
echo 14) non-stop ping ip
echo 15) Create and open a file that lists all active connections
echo 16) Retrieve Wi-Fi password

set /p "tool=Enter Tool #: "

IF "%tool%"=="1" GOTO Cat1Option1
IF "%tool%"=="2" GOTO Cat1Option2
IF "%tool%"=="3" GOTO Cat1Option3
IF "%tool%"=="4" GOTO Cat1Option4
IF "%tool%"=="5" GOTO Cat1Option5
IF "%tool%"=="6" GOTO Cat1Option6
IF "%tool%"=="7" GOTO Cat1Option7
IF "%tool%"=="8" GOTO Cat1Option8
IF "%tool%"=="9" GOTO Cat1Option9
IF "%tool%"=="10" GOTO Cat1Option10
IF "%tool%"=="11" GOTO Cat1Option11
IF "%tool%"=="12" GOTO Cat1Option12
IF "%tool%"=="13" GOTO Cat1Option13
IF "%tool%"=="14" GOTO Cat1Option14
IF "%tool%"=="15" GOTO Cat1Option15
IF "%tool%"=="16" GOTO Cat1Option16

:Cat1Option1
echo Getting All Network Information...
ipconfig /all > output.txt
output.txt
GOTO END

:Cat1Option2
echo Getting DNS Information...
netsh interface ip show dnsservers
GOTO END

:Cat1Option3
echo Flushing DNS Cache...
ipconfig /flushdns
GOTO END

:Cat1Option4
echo Getting new IP...
echo Releasing old IP
ipconfig /release
echo Acquiring new IP
ipconfig /renew
echo New IP Address Acquired
GOTO END

:Cat1Option5
set /p "site=Enter domain name: "
echo Resolving Address %site%
nslookup %site%
echo Address Resolved
GOTO END

:Cat1Option6
set /p "site=Enter domain name/IP Address: "
tracert %site%
GOTO END

:Cat1Option7
echo Outputing DNS Cache to command prompt and file
ipconfig /displaydns > output.txt
output.txt
GOTO END

:Cat1Option8
getmac /v
GOTO END

:Cat1Option9
netsh interface show interface
GOTO END

:Cat1Option10
netsh interface ip show address | findstr "IP Address"
GOTO END

:Cat1Option11
echo Turning off windows firewall
netsh advfirewall set allprofiles state off
echo Firewall disabled
GOTO END

:Cat1Option12
echo Turning on windows firewall
netsh advfirewall set allprofiles state on
echo Firewall enabled
GOTO END

:Cat1Option13
set /p "site=Enter domain name/IP Address: "
ping %site%
GOTO END

:Cat1Option14
set /p "site=Enter domain name/IP Address: "
ping -t %site%
GOTO END

:Cat1Option15
echo Watching for open ports
netstat -abf 1 > output.txt
output.txt
GOTO END

:Cat1Option16
netsh wlan show profile
set /p "network=Enter Network Name (Use quotes if space): "
netsh wlan show profile name=%network% key=clear | findstr Key
GOTO END

::---------------------------------------
:Cat2
:: Display Options

echo Disk Tools: Select Tool
echo 1) Check Disk
echo 2) Check System Files
echo 3) Check Image
echo 4) Repair Image
echo 5) Format disk
echo 6) Copy folder to a new location

set /p "tool=Enter Tool #: "

IF "%tool%"=="1" GOTO Cat2Option1
IF "%tool%"=="2" GOTO Cat2Option2
IF "%tool%"=="3" GOTO Cat2Option3
IF "%tool%"=="4" GOTO Cat2Option4
IF "%tool%"=="5" GOTO Cat2Option5
IF "%tool%"=="6" GOTO Cat2Option6

:Cat2Option1
echo Checking Disk
chkdsk /f
chkdsk /r
GOTO END

:Cat2Option2
sfc /scannow
GOTO END

:Cat2Option3
DISM /Online /Cleanup-Image /ScanHealth
GOTO END

:Cat2Option4
DISM /Online /Cleanup-Image /RestoreHealth
GOTO END

:Cat2Option5
::List Disks
echo list disk > ListDisk.txt
echo exit >> ListDisk.txt
diskpart /s ListDisk.txt

set /p "disk=Enter Disk #: "

::Format Disk
echo select disk %disk% > FormatDisk.txt
echo clean >> FormatDisk.txt
echo create partition primary >> FormatDisk.txt
echo select part 1 >> FormatDisk.txt
echo format fs=ntfs quick >> FormatDisk.txt
diskpart /s FormatDisk.txt
GOTO END

:Cat2Option6
set /p "s=Enter Source Directory: "
set /p "d=Enter Destination Directory: "
set /p "t=Enter Thread Count: "
robocopy %s% %t% /mt:%t%
GOTO END

::---------------------------------------
:Cat3
:: Display Options

echo Orher Utilities: Select Tool
echo 1) Check Power Usage
echo 2) Check Battery
echo 3) See File Assosiations
echo 4) Restart to BIOS
echo 5) List all running taks
echo 6) Kill A Task
echo 7) See all drivers
echo 8) Get system Info

set /p "tool=Enter Tool #: "

IF "%tool%"=="1" GOTO Cat3Option1
IF "%tool%"=="2" GOTO Cat3Option2
IF "%tool%"=="3" GOTO Cat3Option3
IF "%tool%"=="4" GOTO Cat3Option4
IF "%tool%"=="5" GOTO Cat3Option5
IF "%tool%"=="6" GOTO Cat3Option6
IF "%tool%"=="7" GOTO Cat3Option7
IF "%tool%"=="8" GOTO Cat3Option8

:Cat3Option1
powercfg /energy
GOTO END

:Cat3Option2
powercfg /batteryreport
GOTO END

:Cat3Option3
assoc > output.txt
output.txt
GOTO END

:Cat3Option4
shutdown /r /fw /f /t 0
GOTO END

:Cat3Option5
tasklist > output.txt
output.txt
GOTO END

:Cat3Option6
set /p "pid=Enter PID: "
taskkill /f /pid %pid%
GOTO END

:Cat3Option7
driverquery -v > output.txt
output.txt
GOTO END

:Cat3Option8
systeminfo > output.txt
output.txt
GOTO END

::---------------------------------------
:END
pause
