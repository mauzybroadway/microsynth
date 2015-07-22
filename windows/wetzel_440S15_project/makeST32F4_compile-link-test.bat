ECHO OFF
REM  makeSTM32F4compile-test.bat wmh 2015-04-01 : testing if we can compile files in initial TIM_TimeBase example 
REM
REM step 1 -- get the sources to compile
REM	We copied the original project here and used a simple .bat file to compile which resulted in missing header file errors. 
REM 	Searching in \stm32f4_dsp_stdperiph_lib(5)\ revealed the missing hea,der file, which we place in .\added
REM	The added header file which was #included needed other header files leading to a chain of missing header files which we found and placed in .\added
REM	At several points the header files included #ifdef configuration switches which we set on the gcc command line with '-D STM32F40_41xxx -D USE_STM324xG_EVAL'
REM 	Eventually the attempted compile did not error on missing header files, but continued to error on missing definitions
REM	By grepping in \stm32f4_dsp_stdperiph_lib(5)\ we found header files which included those definitions which we copied to .\added
REM	We also added #include's for some of those grepped files to the sources where the definitions were reported missing.
REM	The above procedures finally resulted in all three sources for the example being compiled spearetly (but not yet linked)
REM
REM	*** note ** at this point the C sources compile but we have not included the startup code or attempted to link anything 
REM
REM step 2 -- link the objects
REM	Linking fails with a 'undefined references' at a number of points; we now have track down the .c files containing the definitions which .h files reference
REM	The step above works find until we attempt to compile stm324xg_eval.c, which wants to add a bunch of new .h interfaces we dont need (usart, sdio, dma, i2c)
REM	We end up commenting out code for the interfaces we dont need and get stm324xg_eval-reduced.c and removing unused .h and .c files from .\added
REM	Linking reveals some additional mssing interfaces which we locate and add
REM	Finally, we end up disabling 'assert_param' everywhere and the design links	
REM
REM	*** note *** there are fixups (pin definitions) required at "//!!wmh todo" in 'stm324xg_eval-reduced.h'
REM

ECHO ON

set path=.\;C:\yagarto\bin;


REM assemble startup code 
   cd added
   arm-none-eabi-as -g -mcpu=cortex-m4 SimpleStartSTM32F4_03.asm -o ..\aStartup.o 
   cd ..


REM compile C support
   arm-none-eabi-gcc -I./added  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL ./added/stm32f4xx_tim.c -o tim.o
   arm-none-eabi-gcc -I./added  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL ./added/stm32f4xx_rcc.c -o rcc.o
   arm-none-eabi-gcc -I./added  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL ./added/stm32f4xx_gpio.c -o gpio.o 
   arm-none-eabi-gcc -I./added  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL ./added/misc.c -o misc.o
   arm-none-eabi-gcc -I./added  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL ./added/stm324xg_eval-reduced.c -o eval.o

REM compile application
  arm-none-eabi-gcc -I./added  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL main.c -o cMain.o
  arm-none-eabi-gcc -I./added  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL stm32f4xx_it.c -o Cit.o
  arm-none-eabi-gcc -I./added  -c -mthumb -O0 -g -mcpu=cortex-m4 -save-temps -D STM32F40_41xxx -D USE_STM324xG_EVAL system_stm32f4xx.c -o Csystem.o

REM linking
  arm-none-eabi-gcc -nostartfiles -g -Wl,--no-gc-sections -Wl,-Map,Blinky.map -Wl,-T linkBlinkySTM32F4_01.ld -oBlinky.elf aStartup.o cMain.o Cit.o Csystem.o tim.o rcc.o gpio.o misc.o eval.o -lgcc 

REM hex file
  arm-none-eabi-objcopy -O ihex Blinky.elf Blinky.hex

REM AXF file
  copy Blinky.elf Blinky.AXF

REM list file
  arm-none-eabi-objdump -S  Blinky.axf >Blinky.lst

pause
