@echo off

:: Display Master Catagories
echo Select Catagory
echo 1) Network Tools
echo 2) Disk Tools
echo 3) Power Tools
echo 4) File Assosiations
echo 5) Other Utilities

set /p "catagory=Enter Catagory #: "
echo %catagory%

IF "%catagory%"=="1" GOTO Cat1
IF "%catagory%"=="2" GOTO Cat2

::---------------------------------------
:Cat1
:: Display Options

echo Network Tools: Select Tool
echo 1) Display Network Information
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

set /p "tool=Enter Tool #: "
echo %tool%

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

:Cat1Option1
echo Getting Network Information...
ipconfig /all
GOTO END

:Cat1Option2
echo Getting DNS Information...
ipconfig /all | findstr DNS
GOTO END

:Cat1Option3
echo Flushing DNS Cache...
ipconfig /flushdns
GOTO END

:Cat1Option4
echo Getting new IP...
ipconfig /release
ipconfig /renew
GOTO END

:Cat1Option5
set /p "site=Enter domain name: "
nslookup %site%
GOTO END

:Cat1Option6
set /p "site=Enter domain name/IP Address: "
tracert %site%
GOTO END

:Cat1Option7
ipconfig /displaydns
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
netsh advfirewall set allprofiles state off
GOTO END

:Cat1Option12
netsh advfirewall set allprofiles state on
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
netstat -adfo 5 | output.txt
output.txt
GOTO END

::---------------------------------------
:Cat2
:: Display Options

echo Didk Tools: Select Tool
echo 1) Check Disk
echo 2) Check System Files
echo 3) Check Image
echo 4) Repair Image
echo 5) Example

set /p "tool=Enter Tool #: "
echo %tool%

IF "%tool%"=="1" GOTO Cat2Option1
IF "%tool%"=="2" GOTO Cat2Option2
IF "%tool%"=="3" GOTO Cat2Option3
IF "%tool%"=="4" GOTO Cat2Option4
IF "%tool%"=="5" GOTO Cat2Option5

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
echo Cat2Option5
GOTO END

::---------------------------------------
:Cat3
:: Display Options

echo Catagory 3: Select Tool
echo 1) Check Power Usage
echo 2) Check Battery
echo 3) Example
echo 4) Example
echo 5) Example

set /p "tool=Enter Tool #: "
echo %tool%

IF "%tool%"=="1" GOTO Cat3Option1
IF "%tool%"=="2" GOTO Cat3Option2
IF "%tool%"=="3" GOTO Cat3Option3
IF "%tool%"=="4" GOTO Cat3Option4
IF "%tool%"=="5" GOTO Cat3Option5

:Cat3Option1
powercfg /energy
GOTO END

:Cat3Option2
powercfg /batteryreport
GOTO END

:Cat3Option3
echo Cat3Option3
GOTO END

:Cat3Option4
echo Cat3Option4
GOTO END

:Cat3Option5
echo Cat3Option5
GOTO END

::---------------------------------------
:Cat4
:: Display Options

echo Catagory 4: Select Tool
echo 1) See all assosiations
echo 2) Example
echo 3) Example
echo 4) Example
echo 5) Example

set /p "tool=Enter Tool #: "
echo %tool%

IF "%tool%"=="1" GOTO Cat4Option1
IF "%tool%"=="2" GOTO Cat4Option2
IF "%tool%"=="3" GOTO Cat4Option3
IF "%tool%"=="4" GOTO Cat4Option4
IF "%tool%"=="5" GOTO Cat4Option5

:Cat4Option1
assoc
GOTO END

:Cat4Option2
echo Cat4Option2
GOTO END

:Cat4Option3
echo Cat4Option3
GOTO END

:Cat4Option4
echo Cat4Option4
GOTO END

:Cat4Option5
echo Cat4Option5
GOTO END

::---------------------------------------
:Cat5
:: Display Options

echo Catagory 5: Select Tool
echo 1) Restart to BIOS
echo 2) List All Running Tasks
echo 3) Kill a Task
echo 4) Example
echo 5) Example

set /p "tool=Enter Tool #: "
echo %tool%

IF "%tool%"=="1" GOTO Cat5Option1
IF "%tool%"=="2" GOTO Cat5Option2
IF "%tool%"=="3" GOTO Cat5Option3
IF "%tool%"=="4" GOTO Cat5Option4
IF "%tool%"=="5" GOTO Cat5Option5

:Cat5Option1
shutdown /r /fw /f /t 0
GOTO END

:Cat5Option2
tasklist
GOTO END

:Cat5Option3
set /p "pid=Enter PID: "
taskkill /f /pid %pid%
GOTO END

:Cat5Option4
echo Cat5Option4
GOTO END

:Cat5Option5
echo Cat5Option5
GOTO END

:END
pause