/* Includes ------------------------------------------------------------------*/

#include "stm32f4xx_rcc.h"	//!!wmh
#include "stm32f4xx_gpio.h"	//!!wmh
#include "misc.h"			//!!wmh
#include "p24.h"
//#include "fifo.h"
//!!wmh #include "stm32f4xx_sdio.h"
//!!wmh #include "stm32f4xx_dma.h"
//!!wmh #include "stm32f4xx_i2c.h"


extern int vdisplay[11] = {1,1,0,0,0,0,0,0,0,0,0};

GPIO_TypeDef* ANCA_PORT[ANCAn] = {CA_A_GPIO_PORT, CA_B_GPIO_PORT,
                                 CA_C_GPIO_PORT, CA_D_GPIO_PORT, CA_E_GPIO_PORT,
																 CA_F_GPIO_PORT, CA_G_GPIO_PORT, CA_DP_GPIO_PORT, CA_EN_GPIO_PORT, 
																 CA_CLK_GPIO_PORT, AN_EN_GPIO_PORT, AN_CLK_GPIO_PORT};
const uint16_t ANCA_PIN[ANCAn] = {CA_A_PIN, CA_B_PIN,
                                 CA_C_PIN, CA_D_PIN, CA_E_PIN,
																 CA_F_PIN, CA_G_PIN, CA_DP_PIN, CA_EN_PIN, CA_CLK_PIN,
																 AN_EN_PIN, AN_CLK_PIN};
const uint32_t ANCA_CLK[ANCAn] = {CA_A_GPIO_CLK, CA_B_GPIO_CLK,
                                 CA_C_GPIO_CLK, CA_D_GPIO_CLK, CA_E_GPIO_CLK,
																 CA_F_GPIO_CLK, CA_G_GPIO_CLK, CA_DP_GPIO_CLK, CA_EN_GPIO_CLK, 
																 CA_CLK_GPIO_CLK, AN_EN_GPIO_CLK, AN_CLK_GPIO_CLK};

void ANCA_INIT_All() {
	ANCAInit(A_COLON);
	ANCAInit(B_DIGIT4);
	ANCAInit(C_DIGIT2);
	ANCAInit(D_ROT_ENC);
	ANCAInit(E_R);
	ANCAInit(F_DIGIT1);
	ANCAInit(G_DIGIT3);
	ANCAInit(DP_G);
	ANCAInit(CA_EN);
	ANCAInit(CA_CLK);
	ANCAInit(AN_EN);
	ANCAInit(AN_CLK);
}

void ANCAInit(ANCA_TypeDef Anca)
{
  GPIO_InitTypeDef  GPIO_InitStructure;
  
  /* Enable the GPIO_LED Clock */
  RCC_AHB1PeriphClockCmd(ANCA_CLK[Anca], ENABLE);


  /* Configure the GPIO_LED pin */
  GPIO_InitStructure.GPIO_Pin = ANCA_PIN[Anca];
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_Init(ANCA_PORT[Anca], &GPIO_InitStructure);
}

void ANCA_Set (int ANCA[8])
{
	int i;
	for (i = 0; i < 8; i++){
		if(ANCA[i])
			ANCA_PORT[i]->BSRRH = ANCA_PIN[i];
		else
			ANCA_PORT[i]->BSRRL = ANCA_PIN[i];
	}
}

void ANCA_Print_Num (int num, int digit, int dot)
{
	int CA[8] = {1,1,1,1,1,1,1,0};
	int AN[8] = {0,0,0,0,0,0,0,0};

	// disable cathode/anode
	ANCA_PORT[CA_EN]->BSRRL = ANCA_PIN[CA_EN];
	ANCA_PORT[AN_EN]->BSRRL = ANCA_PIN[AN_EN];

	if(dot)
		CA[7] = 1;

	// should probably use typedef vals, not numbers...
	switch(num) {
		case 0: CA[6] = 0; break;
		case 1: CA[0] = 0; CA[3] = 0; CA[4] = 0; CA[5] = 0; CA[6] = 0; break;
		case 2: CA[2] = 0; CA[5] = 0; break;
		case 3: CA[4] = 0; CA[5] = 0; break;
		case 4: CA[0] = 0; CA[3] = 0; CA[4] = 0; break;
		case 5: CA[1] = 0; CA[4] = 0; break;
		case 6: CA[1] = 0; break;
		case 7: CA[4] = 0; CA[5] = 0; CA[6] = 0; break;
		case 8: break;
		case 9: CA[4] = 0; break;
		case 10: CA[3] = 0;  break;
		case 11: CA[0] = 0; CA[1] = 0; break;
		case 12: CA[1] = 0; CA[2] = 0; CA[6] = 0; break;
		case 13: CA[0] = 0; CA[5] = 0;  break;
		case 14: CA[1] = 0; CA[2] = 0; break;
		case 15: CA[1] = 0; CA[2] = 0; CA[3] = 0; break;
		default: CA[0] = 0; CA[1] = 0; CA[2] = 0; CA[3] = 0; CA[4] = 0; CA[5] = 0; break;
	}
	
	switch(digit) {
		case 0: AN[F_DIGIT1] = 1; break;
		case 1: AN[C_DIGIT2] = 1; break;
		case 4: AN[A_COLON]  = 1; break;
		case 2: AN[G_DIGIT3] = 1; break;
		case 3: AN[B_DIGIT4] = 1; break;
	}
	
	// set/clock the cathode
	ANCA_Set(CA);
	ANCA_PORT[CA_CLK]->BSRRL = ANCA_PIN[CA_CLK];
	ANCA_PORT[CA_CLK]->BSRRH = ANCA_PIN[CA_CLK];
	
	// set/clock the anode
	ANCA_Set(AN);
	ANCA_PORT[AN_CLK]->BSRRL = ANCA_PIN[AN_CLK];
	ANCA_PORT[AN_CLK]->BSRRH = ANCA_PIN[AN_CLK];
	
	// enable the cathode
	ANCA_PORT[CA_EN]->BSRRH = ANCA_PIN[CA_EN];
	
	// enable the anode
	ANCA_PORT[AN_EN]->BSRRH = ANCA_PIN[AN_EN];
}

void ANCA_Print_Ascii (char c, int digit)
{
	
}

int queue(swevent_t * in) {
	if(tail < QSIZE){
		//fifo[tail].pr = in->pr;
		//fifo[tail].sw = in->sw;
		//fifo[tail++].msec = in->msec;
		fifo[tail++] = *in;
		return 0;
	} else {
		return -1;
	}
}

swevent_t dequeue() {
	unsigned int tmp = head, i;
	
	if(tail == 0) {
		swevent_t KILL;
		KILL.pr = 1;
		KILL.sw = 20;
		return KILL;			// return an invalid switch event
	}
	
	swevent_t tmpsw = fifo[0];
	
	//screw_it();
	
	for (i = 0; i < tail - 1; i++) {
		fifo[i] = fifo[i + 1];
	}
	
	tail--;
	
	/*if(tail == 0) {
		swevent_t KILL;
		return KILL;
	}
	
	head++;
	
	if(head >= tail){
		head = 0; 
		tail = 0;
	}*/
	
	return tmpsw;
}

swevent_t getswitch(void)
{
	swevent_t out = dequeue();
	/*if(out.pr == 1) {
		vdisplay[0] = out.sw;
	} else if(out.pr == 0) {
		vdisplay[2] = out.sw;
	}*/
	
	/*if(out.pr == 1 || out.pr == 0) {
		vdisplay[2] = out.sw;
	}*/
	
	//vdisplay[2] = 3;
	return out;
}

void hw8stuff(void)
{
	static unsigned int things[4] = {0,0,0,0};
	swevent_t out = getswitch();
	
	if(out.sw <= 13) {
		if(out.pr != 0) {
			switch(out.sw) {
				case 1 : if (vdisplay[0] < 15) vdisplay[0]++; break;
				case 3 : if (vdisplay[1] < 15) vdisplay[1]++; break;
				case 5 : if (vdisplay[2] < 15) vdisplay[2]++; break;
				case 7 : if (vdisplay[3] < 15) vdisplay[3]++; break;
			}
		} else {
			switch(out.sw) {
				case 2 : if (vdisplay[0] > 0) vdisplay[0]--; break;
				case 4 : if (vdisplay[1] > 0) vdisplay[1]--; break;
				case 6 : if (vdisplay[2] > 0) vdisplay[2]--; break;
				case 8 : if (vdisplay[3] > 0) vdisplay[3]--; break;
			}
		}
	}

	/*if(out.pr > 1) {
	asm(
	"push    {r0-r3,lr}\n\t"
	"ldr     r3,%[val]\n\t"
	"ldm     r3,{r0-r1}\n\t"
	"bl      asm_hw8_stuff\n\t"
	"pop     {r0-r3,lr}\n\t"
	"mov     r0, r0"
	: [val]"=out" (out)
	);
	}*/
}


    
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
