#include "usart.h"


extern UART_HandleTypeDef huart2;

///*Low layer read(input) function*/
//__attribute__ ((used))
//int _read(int file, char *ptr, int len)
//{
//	int i;
//	int lenCnt = 0;
//	(void)file;
//
//	for(i = 0; i < len; i++)
//	{
//		while (queue_isEmpty() == 1){}
//		// UART_GetChar is user's basic input function
//		lenCnt++;
//		queue_get(ptr);
//		if(*ptr == 0x0d){
//			*ptr = '\n';
//			break;
//		}
//		ptr++;
//	}
//	return lenCnt;
//}


/*Low layer write(output) function*/
__attribute__ ((used))
int _write(int file, char *ptr, int len)
{

	HAL_UART_Transmit(&huart2, (uint8_t*)ptr, len, 100);
    return len;
}
