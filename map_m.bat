@echo off
:end
rem start /realtime
map.exe --map-config conf/map_athena_m.conf --battle-config conf/battle_athena_m.conf --atcommand-config conf/atcommand_athena_m.conf --charcommand-config conf/charcommand_athena_m.conf --inter-config conf/inter_athena_m.conf
echo .
echo .
echo Map server crashed!
ping -n 15 127.0.0.1 >nul
goto end