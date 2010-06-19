@echo off
:end
char.exe conf/char_athena_t.conf conf/inter_athena_t.conf conf/subnet_athena_t.conf
echo .
echo .
echo Char server crashed!
ping -n 15 127.0.0.1 >nul
goto end