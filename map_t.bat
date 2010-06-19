@echo off
:end
rem start /realtime
map.exe --map-config conf/map_athena_t.conf --battle-config conf/battle_athena_t.conf --atcommand-config conf/atcommand_athena_t.conf --charcommand-config conf/charcommand_athena_t.conf --inter-config conf/inter_athena_t.conf
echo .
echo .
echo Map server crashed!
ping -n 15 127.0.0.1 >nul
goto end