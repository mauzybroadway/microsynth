REM cleanBlinky.bat wmh 2013-01-29 : cleans intermediate compiler results and output
set path=.\;C:\_software_installs\yagarto\bin;C:\_software_installs\yagarto\yagarto-tools-20100703\bin;

REM deleting
del *.o
del *.ii
del *.i
del *.s
del *.AXF
del *.elf
del *.hex
del *.dep
del *.map
del *.lst
pause
