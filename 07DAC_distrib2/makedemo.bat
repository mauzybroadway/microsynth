set path=.\;C:\yagarto\bin;

set SYMBOLS=-DSTM32F40_41xxx -DSTM32F407VG -DSTM32F4XX -D__ASSEMBLY__ -DUSE_STDPERIPH_DRIVER -O0
set COMPOPTS=-fdata-sections -ffunction-sections -c -mthumb -g -mcpu=cortex-m4 -std=gnu99 -save-temps -Wall

REM ======================================
REM Assembling
REM ======================================
  arm-none-eabi-as -g -mcpu=cortex-m4 -I./ -o aStartup.o 	SimpleStartSTM32F4_03a.asm
  arm-none-eabi-as -g -mcpu=cortex-m4 -I./ -o aDMAint_svc.o	DMA1Stream5int_svc.asm

pause

REM ======================================
REM compiling User code (C)
REM ======================================
  arm-none-eabi-gcc  %SYMBOLS% %COMPOPTS% -I./ main_demoaudio03.c -o cMain.o

pause


REM ======================================
REM Linking all
REM ======================================
set LINKSWITCHES= -g  -nostartfiles -nodefaultlibs -nostdlib -Wl,--gc-sections 
arm-none-eabi-gcc   %LINKSWITCHES% -Wl,-Map,./Blinky.map -Wl,-T ./STM32F407VG.ld -o ./Blinky.elf *.o -L"C:\yagarto_gcc472\arm-none-eabi\lib\thumb\v7m" -lgcc 

pause

arm-none-eabi-objcopy -O ihex Blinky.elf Blinky.hex
copy Blinky.elf Blinky.AXF
arm-none-eabi-objdump -S  Blinky.axf >Blinky.lst

pause