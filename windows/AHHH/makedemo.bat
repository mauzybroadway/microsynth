set path=.\;C:\yagarto\bin;

set SYMBOLS=-DSTM32F40_41xxx -DSTM32F407VG -DSTM32F4XX -D__ASSEMBLY__ -DUSE_STDPERIPH_DRIVER -O0
set COMPOPTS=-fdata-sections -ffunction-sections -c -mthumb -g -mcpu=cortex-m4 -std=gnu99 -save-temps -Wall

REM ======================================
REM Assembling
REM ======================================
  arm-none-eabi-as -g -mcpu=cortex-m4 -I./ -o aStartup.o 	SimpleStartSTM32F4_03a.asm
  arm-none-eabi-as -g -mcpu=cortex-m4 -I./ -o aDMAint_svc.o	DMA1Stream5int_svc.asm
  arm-none-eabi-as -g -mcpu=cortex-m4 -I./ -o aP24.o		added/STM32F4_P24v04.asm

pause

REM ======================================
REM compiling User code (C)
REM ======================================
  arm-none-eabi-gcc -I./added -fdata-sections -ffunction-sections  -c -mthumb -O2 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL ./added/stm32f4xx_rcc.c -o rcc.o
  arm-none-eabi-gcc -I./added -fdata-sections -ffunction-sections  -c -mthumb -O2 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL ./added/stm32f4xx_gpio.c -o gpio.o 
  arm-none-eabi-gcc -I./added -fdata-sections -ffunction-sections  -c -mthumb -O2 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL ./added/misc.c -o misc.o
  arm-none-eabi-gcc -I./added -fdata-sections -ffunction-sections  -c -mthumb -O2 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL ./added/stm324xg_eval-reduced.c -o eval.o
  arm-none-eabi-gcc -I./added -fdata-sections -ffunction-sections  -c -mthumb -O2 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL ./added/p24.c -o p24.o
  arm-none-eabi-gcc -I./added %SYMBOLS% %COMPOPTS% -D USE_STM324xG_EVAL -I./ main_demoaudio03.c -o cMain.o

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