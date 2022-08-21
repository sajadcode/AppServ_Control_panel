@echo off
 :Start2 
    cls
    goto Start
    :Start
     echo --------------------------------------
     echo AppServ Tool By Sajad.G
     echo --------------------------------------     
       
    echo Choose from the list given below:

    echo [1] Apache Start

    echo [2] Apache Restart

    echo [3] Apache Stop

    echo [4] Edit php.ini
    
    echo [5] MySQL Start

    echo [6] MySQL Stop

    echo [7] Reset MySQL Root Password

    set /a one=1
    set /a two=2
    set /a three=3
    set /a four=4
    set /a five=5
    set /a six=6
    set /a seven=7
    set input=
    set /p input= Enter your choice:
    if %input% equ %one% goto A if NOT goto Start2
    if %input% equ %two% goto B if NOT goto Start2
    if %input% equ %three% goto C if NOT goto Start2
    if %input% equ %four% goto D if NOT goto Start2
    if %input% equ %five% goto E if NOT goto Start2
    if %input% equ %six% goto F if NOT goto Start2
    if %input% equ %seven% goto G if NOT goto Start2

    :A
    cls
    echo Starting Apache ...
     C:\AppServ\Apache24\bin\httpd.exe -k start -n Apache24
    pause
    goto :start2


    :B
    cls
    echo Restarting Apache ...
     C:\AppServ\Apache24\bin\httpd.exe -k restart -n Apache24
    pause
    goto :start2

    :C  
      cls
    echo Stoping Apache ...
      C:\AppServ\Apache24\bin\httpd.exe -k stop -n Apache24 
    pause
    goto :start2

    :D  
      cls
    echo You Trying to Edit php.ini
      C:\Windows\notepad.exe C:\AppServ\php7\php.ini
    pause
    goto :start2

    :E  
      cls
    echo Starting MySQL
      C:\Windows\System32\net.exe  start mysql8
    pause
    goto :start2

    :F  
      cls
    echo Stoping MySQL
      C:\Windows\System32\net.exe  stop mysql8
    pause
    goto :start2

    :G  
      cls
    echo You Trying to Reset MySQL Root Password
      C:\AppServ\php7\php.exe C:\AppServ\MySQL\scripts\resetpwd.php
    pause
    goto :start2

    :N
    cls
    echo Invalid Selection! Try again
    pause
    goto :start2
