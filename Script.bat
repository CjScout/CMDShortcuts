@echo off

:: Display Master Catagories
echo Select Catagory
echo 1) Network Tools
echo 2) Disk Tools
echo 3) Example
echo 4) Example
echo 5) Example

set /p "catagory=Enter Catagory #: "
echo %catagory%

IF "%catagory%"=="1" GOTO Cat1
IF "%catagory%"=="2" GOTO Cat2

::---------------------------------------
:Cat1
:: Display Options

echo Network Tools: Select Tool
echo 1) Display Network Information
echo 2) Flush DNS
echo 3) Example
echo 4) Example
echo 5) Example

set /p "tool=Enter Tool #: "
echo %tool%

IF "%tool%"=="1" GOTO Cat1Option1
IF "%tool%"=="2" GOTO Cat1Option2
IF "%tool%"=="3" GOTO Cat1Option3
IF "%tool%"=="4" GOTO Cat1Option4
IF "%tool%"=="5" GOTO Cat1Option5

:Cat1Option1
echo Getting Network Information...
ipconfig /all
GOTO END

:Cat1Option2
echo Flushing DNS Cache...
ipconfig /flushdns
GOTO END

:Cat1Option3
echo Cat1Option3
GOTO END

:Cat1Option4
echo Cat1Option4
GOTO END

:Cat1Option5
echo Cat1Option5
GOTO END

::---------------------------------------
:Cat2
:: Display Options

echo Didk Tools: Select Tool
echo 1) Check Disk
echo 2) Example
echo 3) Example
echo 4) Example
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
chkdsk
GOTO END

:Cat2Option2
echo Cat2Option2
GOTO END

:Cat2Option3
echo Cat2Option3
GOTO END

:Cat2Option4
echo Cat2Option4
GOTO END

:Cat2Option5
echo Cat2Option5
GOTO END

::---------------------------------------
:Cat3
:: Display Options

echo Catagory 3: Select Tool
echo 1) Example
echo 2) Example
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
echo Cat3Option1
GOTO END

:Cat3Option2
echo Cat3Option2
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
echo 1) Example
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
echo Cat4Option1
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
echo 1) Example
echo 2) Example
echo 3) Example
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
echo Cat5Option1
GOTO END

:Cat5Option2
echo Cat5Option2
GOTO END

:Cat5Option3
echo Cat5Option3
GOTO END

:Cat5Option4
echo Cat5Option4
GOTO END

:Cat5Option5
echo Cat5Option5
GOTO END

:END
pause