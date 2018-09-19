@echo off

:: INPUT FILE
SET INPUT=C:\temp\in.txt
:: TARGET STR TO BE REMOVED
SET STR1=HELLO
:: OUTPUT FILE
SET OUTPUT=C:\temp\out.txt

:: Example:
:: in.txt
:: HELLO, THIS IS A DEMO
:: WORLD
:: ANOTHER LINE
:: ANOTHER LINE 2
TYPE %INPUT% | FIND /V /I "%STR1%" > %OUTPUT%
:: out.txt
:: ANOTHER LINE
:: ANOTHER LINE 2

:: FOR MULTIPLE STRINGS
:: SET STR2=WORLD
:: TYPE %INPUT% | FIND /V /I "%STR1%" | FIND /V /I "%STR2%" > %OUTPUT%

GOTO :EOF