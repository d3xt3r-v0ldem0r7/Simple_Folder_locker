@ECHO OFF
title locker
rem ------------------ABOUT------------------------
rem copyright @ 2021
rem developed by iniyavan
rem this software is a simple folder locker and
rem you can hide your files in it.
rem this is not complicated folder locker
rem i simplify the traditional method to automated
rem i choose old batch prog, b'cos it is easy to
rem manipulate the commands easily than other prog.
rem I HOPE THIS SOFTWARE IS USEFUL TO U.
rem -----------------------------------------------
if exist "{6aod-win8900ad-l0c!k233.45pfbdr}" goto helppa
if not exist "$ LOCKER $ =# Put_Your_Secret_Files_HERE!" goto create

:create
mode con: cols=60 lines=22
MD "$ LOCKER $ =# Put_Your_Secret_Files_HERE!"
echo>>"$ LOCKER $ =# Put_Your_Secret_Files_HERE!\warning!_DONT_CLOSE_MEEEEEEE.dat" DONT CLOSE ME! _if you want to hide it back, open the locker.bat { step1 : press 1(help_ section); step2 : press 2 this will hide your files back. }
cls
echo created successfully!
echo.
echo.
echo -----------------------------------------------------------
echo                       INSTRUCTIONS
echo -----------------------------------------------------------
echo.
echo move your files to the folder named 
echo [ $ LOCKER $ =# Put_Your_Secret_Files_HERE! ] 
echo (which files is wanted to be protected)
echo if you need to create another locker in
echo different location just copy locker.bat
echo and paste in the location
echo NOTE : [ it will create only one locker in
echo 	   one location, you can't create another locker ]
echo.
echo created by iniyavan[d3xt3r]
pause
goto signup

:yorn
mode con: cols=60 lines=22
echo you want protect your folder? YES(press 1) or NO(press 2)
set/p yn=">>"
if %yn% == 1 GOTO mainprog
if %yn% == 2 GOTO exitc
if %yn% == 3 GOTO exitc
if %yn% == 4 GOTO exitc
if %yn% == 5 GOTO exitc
if %yn% == 6 GOTO exitc
if %yn% == 7 GOTO exitc
if %yn% == 8 GOTO exitc
if %yn% == 9 GOTO exitc
if %yn% == 0 GOTO exitc
if %yn% == "" GOTO yorn
if %yn% == " " GOTO yorn
goto yorn

:exitc
echo.
DEL "$ LOCKER $ =# Put_Your_Secret_Files_HERE!"
echo.
cls
exit

:signup
cls
mode con: cols=45 lines=15
echo --------------------------------------------
echo                  SIGN UP
echo --------------------------------------------
echo.
echo.
set/p "lpass=*        Enter new Password : "
echo.
set/p "codeu=*        ENTER recovery code : "
echo.
echo.
echo created by iniyavan[d3xt3r]
echo --------------------------------------------
IF ["%lpass%"] == [""] goto CERROR
IF ["%lpass%"] == [" "] goto CERROR
IF ["%codeu%"] == [""] goto CERROR
IF ["%codeu%"] == [" "] goto CERROR
GOTO yorn

:CERROR
echo.
ECHO Invalid Password! 
echo.
pause
goto signup

:mainprog
echo.
echo %lpass% >> Encoder099.base64
echo %codeu% >> Enreccode0.rot13
move "Encoder099.base64" "$ LOCKER $ =# Put_Your_Secret_Files_HERE!"
move "Enreccode0.rot13" "$ LOCKER $ =# Put_Your_Secret_Files_HERE!"
attrib "Encoder099.base64" +H +S
attrib "Enreccode0.rot13" +H +S
ren "$ LOCKER $ =# Put_Your_Secret_Files_HERE!" "{6aod-win8900ad-l0c!k233.45pfbdr}"
attrib "warning!_DONT_CLOSE_MEEEEEEE.dat" +H +S
attrib "{6aod-win8900ad-l0c!k233.45pfbdr}" +H +S
echo.
cls
exit

:helppa
cls
mode con: cols=45 lines=15
title pop up message
echo if you want login press 1. press 2 to help.
SET/p NUMBER=">>"
IF %NUMBER%==1 GOTO login
IF %NUMBER%==2 GOTO helpp
IF %NUMBER% == 3 GOTO helppa
IF %NUMBER% == 4 GOTO helppa
IF %NUMBER% == 5 GOTO helppa
IF %NUMBER% == 6 GOTO helppa
IF %NUMBER% == 7 GOTO helppa
IF %NUMBER% == 8 GOTO helppa
IF %NUMBER% == 9 GOTO helppa
IF %NUMBER% == 0 GOTO helppa
IF %NUMBER% == [""] GOTO helppa
IF %NUMBER% == [" "] GOTO helppa
goto helppa

:helpp
cls
title _help_
echo in case you dont remember your Password dont worry!
echo you can recover it by your recovery code.
echo.
echo you want recoverpassword press 1.
echo you want hide your files press 2. 
echo or else you want login press 3.
echo.
echo created by iniyavan[d3xt3r]
SET/p NUMBER=">>"
IF %NUMBER%==1 GOTO recovery
IF %NUMBER%==2 GOTO hideit
IF %NUMBER% == 3 GOTO login
IF %NUMBER% == 4 GOTO helpp
IF %NUMBER% == 5 GOTO helpp
IF %NUMBER% == 6 GOTO helpp
IF %NUMBER% == 7 GOTO helpp
IF %NUMBER% == 8 GOTO helpp
IF %NUMBER% == 9 GOTO helpp
IF %NUMBER% == 0 GOTO helpp
IF %NUMBER% == [""] GOTO helpp
IF %NUMBER% == [" "] GOTO helpp
goto helpp

:recovery
SET/P prec= <"{6aod-win8900ad-l0c!k233.45pfbdr}\Enreccode0.rot13"
CLS
echo --------------------------------------------
echo              Password Recovery
echo --------------------------------------------
echo.
echo.
SET/P "recde=*        Enter Recovery code : "
echo.
echo.
echo created by iniyavan[d3xt3r]
IF %recde%==%prec% goto cpass
IF %recde% == [""] GOTO helpp
IF %recde% == [" "] GOTO helpp
GOTO recee

:cpass
cls
mode con: cols=45 lines=15
echo --------------------------------------------
echo              PASSWORD CHANGING
echo --------------------------------------------
echo.
echo.
set/p "lpass=*        Enter new Password : "
echo.
set/p "codeu=*        ENTER recovery code : "
echo.
echo.
echo created by iniyavan[d3xt3r]
echo --------------------------------------------
IF ["%lpass%"] == [""] goto CERRORR
IF ["%lpass%"] == [" "] goto CERRORR
IF ["%codeu%"] == [""] goto CERRORR
IF ["%codeu%"] == [" "] goto CERRORR
GOTO setpp

:setpp
echo wait...
DEL /A:H "{6aod-win8900ad-l0c!k233.45pfbdr}\Encoder099.base64"
DEL /A:H "{6aod-win8900ad-l0c!k233.45pfbdr}\Enreccode0.rot13"
TIMEOUT/T 5 >NUL
GOTO mainprogg

:mainprogg
echo %lpass% >> Encoder099.base64
echo %codeu% >> Enreccode0.rot13
move "Encoder099.base64" "{6aod-win8900ad-l0c!k233.45pfbdr}"
move "Enreccode0.rot13" "{6aod-win8900ad-l0c!k233.45pfbdr}"
attrib "Encoder099.base64" +H
attrib "Enreccode0.rot13" +H
echo.
TIMEOUT/T 2<NUL
goto login

:CERRORR
echo.
echo Invalid Password
echo.
pause
goto cpass

:recee
echo.
echo.
echo            incorrect recovery code...
echo.
pause
goto helppa


:login
mode con: cols=45 lines=15
title login
cls
SET/P pass= <"{6aod-win8900ad-l0c!k233.45pfbdr}\Encoder099.base64"
echo --------------------------------------------
echo                  LOGIN
echo --------------------------------------------
ECHO.
echo.
set/p "lpass=*        Enter Password : "
echo.
echo.
echo.created by iniyavan[d3xt3r]
echo --------------------------------------------
IF ["%lpass%"] == [""] goto CERRORRR
IF ["%lpass%"] == [" "] goto CERRORRR
IF NOT %lpass% == %pass% goto CERRORRR
goto mainrev

:CERRORRR
echo.
echo Invalid Password
echo.
pause
GOTO LOGIN

:mainrev
echo.
attrib "{6aod-win8900ad-l0c!k233.45pfbdr}" -H -S
attrib "{6aod-win8900ad-l0c!k233.45pfbdr}\Encoder099.base64" +H +S
attrib "{6aod-win8900ad-l0c!k233.45pfbdr}\Enreccode0.rot13" +H +S
attrib "{6aod-win8900ad-l0c!k233.45pfbdr}\warning!_DONT_CLOSE_MEEEEEEE.dat" +H +S
explorer {6aod-win8900ad-l0c!k233.45pfbdr}
notepad {6aod-win8900ad-l0c!k233.45pfbdr}\warning!_DONT_CLOSE_MEEEEEEE.dat
echo.
cls
goto exit

:hideit
echo.
attrib "{6aod-win8900ad-l0c!k233.45pfbdr}" +H +S
echo.
cls
exit
