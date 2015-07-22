#include "fifo.h"

int queue(swevent_t in) {
	//fifo[curr].pr = in.pr;
	//fifo[curr].sw = in.sw;
	//fifo[curr].msec = in.msec;
	
	fifo[tail++] = in;
}

swevent_t dequeue(void) {
	unsigned int tmp = head;
	
	if(tail == 0) {
		swevent_t KILL = {66,66,66};
		return KILL;
	}
	
	head++;
	
	if(head == tail){
		head = 0; 
		tail = 0;
	}
	
	return fifo[tmp];
}