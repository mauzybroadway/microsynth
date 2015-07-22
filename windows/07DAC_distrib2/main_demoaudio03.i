# 1 "main_demoaudio03.c"
# 1 "C:\\Documents and Settings\\mauzy\\My Documents\\ENEE440\\Project\\07DAC_distrib2//"
# 1 "<command-line>"
# 1 "main_demoaudio03.c"






void DMA1Stream5int_svc(void);

int note = 3;

int main(void)
{
 asm("bl.W (0x08010000+1)");
 DMA1Stream5int_svc();
 while(1);

 return 0;
}
