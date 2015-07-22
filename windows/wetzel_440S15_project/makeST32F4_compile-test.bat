REM  makeSTM32F4compile-test.bat wmh 2015-04-01 : testing if we can compile files in initial TIM_TimeBase example 
REM	We copied the original project here and used a simple .bat file to compile which resulted in missing header file errors. 
REM 	Searching in \stm32f4_dsp_stdperiph_lib(5)\ revealed the missing hea,der file, which we place in .\added
REM	The added header file which was #included needed other header files leading to a chain of missing header files which we found and placed in .\added
REM	At several points the header files included #ifdef configuration switches which we set on the gcc command line with '-D STM32F40_41xxx -D USE_STM324xG_EVAL'
REM 	Eventually the attempted compile did not error on missing header files, but continued to error on missing definitions
REM	By grepping in \stm32f4_dsp_stdperiph_lib(5)\ we found header files which included those definitions which we copied to .\added
REM	We also added #include's for some of those grepped files to the sources where the definitions were reported missing.
REM	The above procedures finally resulted in all three sources for the example being compiled spearetly (but not yet linked)
REM	*** note ** at this point we have not included the startup code or attempted to link anything 

  

set path=.\;C:\yagarto\bin;

REM assemble with '-g' omitted where we want to hide things in the AXF
REM  arm-none-eabi-as -g -mcpu=cortex-m4 -o aDemo.o CortexM4asmOps_01.asm
REM   arm-none-eabi-as -g -mcpu=cortex-m4 -o aStartup.o SimpleStartSTM32F4_03.asm
REM  arm-none-eabi-as -g -mcpu=cortex-m4 -o aSysIntDemo.o SysInt_demo01.asm

REM compiling C
REM  arm-none-eabi-gcc -I./  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps STM32F4main02.c -o cMain.o
REM  arm-none-eabi-gcc -I./  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps LED_01.c -o cLED.o
  arm-none-eabi-gcc -I./added  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL main.c -o cMain.o
  arm-none-eabi-gcc -I./added  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL stm32f4xx_it.c -o it.o
  arm-none-eabi-gcc -I./added  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL system_stm32f4xx.c -o system.o

REM linking
REM arm-none-eabi-gcc -nostartfiles -g -Wl,--no-gc-sections -Wl,-Map,Blinky.map -Wl,-T linkBlinkySTM32F4_01.ld -oBlinky.elf aStartup.o aSysIntDemo.o cLED.o cMain.o -lgcc

REM hex file
REM  arm-none-eabi-objcopy -O ihex Blinky.elf Blinky.hex

REM AXF file
REM  copy Blinky.elf Blinky.AXF
  pause

REM list file
REM  arm-none-eabi-objdump -S  Blinky.axf >Blinky.lst
