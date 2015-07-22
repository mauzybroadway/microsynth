#define QSIZE 20 //realistically, this thing should never have more than 1 item at a time.

typedef struct swevent {
	unsigned int pr : 1 ;  //press-release bit: 1 -- switch was pressed; 0 -- switch was released
	unsigned int sw : 7 ;  //switch number for this event  (with room for expansion)
	unsigned int msec : 24; //time in milliseconds the event occurred (rolls over at 2**24 ms).
} swevent_t;

swevent_t fifo[QSIZE];
unsigned int head, tail;

int queue(swevent_t in);
swevent_t dequeue(void);
