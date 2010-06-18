@echo off
:end
rem start /realtime
map.exe --map-config conf/map_athena_s.conf --battle-config conf/battle_athena_s.conf --atcommand-config conf/atcommand_athena_s.conf --charcommand-config conf/charcommand_athena_s.conf --inter-config conf/inter_athena_s.conf
echo .
echo .
echo Map server crashed!
ping -n 15 127.0.0.1 >nul
goto end