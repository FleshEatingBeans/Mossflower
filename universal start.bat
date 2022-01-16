@echo off
title Gig's Universal Batch file
cd ..\..
IF EXIST kingdoms.exe (start /affinity 1 /high kingdoms.exe @%0\..\Configuration.cfg) ELSE (
IF EXIST medieval2.exe (start /affinity 1 /high medieval2.exe @%0\..\Configuration.cfg) ELSE (
    echo.
    echo ERROR: Cannot find the M2TW or Kingdoms executable.
    echo You probably installed Bare Geomod into the wrong folder.
    echo.
    pause
  )
)