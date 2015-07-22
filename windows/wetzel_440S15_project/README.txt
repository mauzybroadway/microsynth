Brandon Wetzel
ENEE440 - HW08
--------------

Primary Functions:
 __________________________________________________________________
|---- p24.c -------------------------------------------------------
|
|hw8stuff (CALLED IN TIM3 INTERRUPT):
|	controls the actual add/subtract logic for the primary homework
|	question. Increase on TOP press, decrease on BOTTOM release.
|	This function updates the vdisplay array.
|	TODO: let switch fire an interrupt to call this only when needed.
|
|queue:
|	adds a swevent_t to the FIFO
|
|dequeue:
|	returns a swevent_t from the FIFO
|		
|getswitch (REQUIRED): 
|	pretty much just wraps dequeue at this point
|
|__________________________________________________________________
|---- STM32F4_P24v04.asm ------------------------------------------
|
|asm_get_switch (CALLED IN TIM3 INTERRUPT):
|	loops through 13 values and uses as TBH table to turn on the
|	proper cathode for switch, turns on proper switch line, reads
|	the switch line to check if switch drags the line to LO. Also,
|	updates msticks static (.lcomm) value (runs in 1kHz interrupt).
|
|update_state:
|	the debouncing state machine. just updates a static array of
|	size 13 which holds states for each switch. if advances to
|	PRESS state, save the switch number and press bit in FIFO
|
|get_switch_save:
|	fills up word with switch press bit, number, and msticks
|	calls C function: queue
|____________________________

And here we are again. This baby took an uneccesary amount of time thanks
to my vast ignorance of C. You will see all kinds of crazy asm code in here
(e.g. screw_it and asm_hw8_stuff) which arose from my confusion about how
structs work. I thought the numbers in the typedef represented initial values.
Upon my profound realization that they are bit counts, this project became
verrrryyyyyy easy, and let me do the math stuff in C. If you want to have some
fun, I left the asm and inline asm code in here. It accomplishes the same
task as the nice C function [hw8stuff], but wont work anymore because I changed
the method of parameter passing.

