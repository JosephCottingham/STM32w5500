/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "spi.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <cstring>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/*Receive Buffer Size define*/
#define ETH_MAX_BUF_SIZE	2048
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
void print_network_information(void);
int process_dhcp(void);
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
/*Global variables*/
wiz_NetInfo gWIZNETINFO = { .mac = {0x00,0x08,0xdc,0x78,0x91,0x71},
							.ip = {192,168,1,30},
							.sn = {255, 255, 255, 0},
							.gw = {192, 168, 1, 1},
							.dns = {8, 8, 8, 8},
							.dhcp = NETINFO_STATIC};
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
struct opts_struct
{
	char* clientid;
	int nodelimiter;
	char* delimiter;
	enum QoS qos;
	char* username;
	char* password;
	char* host;
	int port;
	int showtopics;
} opts =
{
	(char*)"stdout-subscriber",
	0,
	(char*)"\n",
	QOS0,
	"ydwsvhca",
	"majOBrcrW64E",
	(char*)"localhost",
	1883,
	0
};
unsigned char TargetName[] = "driver.cloudmqtt.com";
unsigned char targetIP[4] = {5,196,95,208};
unsigned int targetPort = 18602;
void messageArrived(MessageData* md)
{
	printf("Message Received\r\n");
	unsigned char testbuffer[100];
	MQTTMessage* message = md->message;

	if (opts.showtopics)
	{
		memcpy(testbuffer,(char*)message->payload,(int)message->payloadlen);
		testbuffer[(int)message->payloadlen + 1] = 0x0a;
//		*(testbuffer + (int)message->payloadlen + 1) = "\n";
		printf("%s\r\n",testbuffer);
	}
	//	printf("%12s\r\n", md->topicName->lenstring.len, md->topicName->lenstring.data);
	if (opts.nodelimiter)
		printf("%.*s", (int)message->payloadlen, (char*)message->payload);
	else
		printf("%.*s%s", (int)message->payloadlen, (char*)message->payload, opts.delimiter);
	//fflush(stdout);
}


unsigned char ethBuf0[ETH_MAX_BUF_SIZE];
unsigned char ethBuf1[ETH_MAX_BUF_SIZE];
unsigned char ethBuf2[ETH_MAX_BUF_SIZE];
unsigned char ethBuf3[ETH_MAX_BUF_SIZE];
uint8_t uartBuf[64];
uint8_t uartBufLen = 0;

uint8_t ret = 0;
uint8_t dhcp_retry = 0;
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	int i;
	int rc = 0;
	unsigned char buf[100];
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_SPI1_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */
	printf("W5500 Start.\n\r");
//	Eth.setSpi(&hspi1, W5500_CS_GPIO_Port, W5500_CS_Pin, W5500_RST_GPIO_Port, W5500_RST_Pin);

	/*Setup W5500, including the memory allegation to each socket for RX/TX*/
	W5500Initialze();
	printf("\r\nCHIP Version: %02x\r\n", getVERSIONR());

	/*Set network informations (Writes network info to W5500)*/
	wizchip_setnetinfo(&gWIZNETINFO);
	ctlnetwork(CN_SET_NETINFO,&gWIZNETINFO);

	printf("Network Info Set\r\n");
	print_network_information();

	DHCP_init(3, ethBuf3);

	while(1){
		if(process_dhcp() == DHCP_IP_LEASED){
			printf("DHCP Success\r\n");
			break;
		}
		else
			printf("Try.....\r\n");
	}

	Network n;
	MQTTClient c;
	n.my_socket = 2;

	DNS_init(1,ethBuf1);
	while(DNS_run(gWIZNETINFO.dns,TargetName,targetIP) == 0){}


	printf("START MQTT\r\n");

	NewNetwork(&n, 0);
	ConnectNetwork(&n, targetIP, targetPort);
	MQTTClientInit(&c,&n,1000,buf,100,ethBuf2,2048);

	print_network_information();
	printf("Target IP  Address : %d.%d.%d.%d:%d\n\r",targetIP[0],targetIP[1],targetIP[2],targetIP[3],targetPort);


	MQTTPacket_connectData data = MQTTPacket_connectData_initializer;
	data.willFlag = 0;
	data.MQTTVersion = 3;
	data.clientID.cstring = opts.clientid;
	data.username.cstring = opts.username;
	data.password.cstring = opts.password;

	data.keepAliveInterval = 60;
	data.cleansession = 1;


	rc = MQTTConnect(&c, &data);
	printf("MQTT Connected\r\n");

	opts.showtopics = 1;
	rc = MQTTSubscribe(&c, "joe/test", opts.qos, messageArrived);
	printf("MQTT Subscribed\r\n");
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	  MQTTYield(&c, 1000);
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */
void print_network_information(void)
{
	memset(&gWIZNETINFO,0,sizeof(gWIZNETINFO));

	wizchip_getnetinfo(&gWIZNETINFO);
	printf("MAC Address : %02x:%02x:%02x:%02x:%02x:%02x\n\r",gWIZNETINFO.mac[0],gWIZNETINFO.mac[1],gWIZNETINFO.mac[2],gWIZNETINFO.mac[3],gWIZNETINFO.mac[4],gWIZNETINFO.mac[5]);
	printf("IP  Address : %d.%d.%d.%d\n\r",gWIZNETINFO.ip[0],gWIZNETINFO.ip[1],gWIZNETINFO.ip[2],gWIZNETINFO.ip[3]);
	printf("Subnet Mask : %d.%d.%d.%d\n\r",gWIZNETINFO.sn[0],gWIZNETINFO.sn[1],gWIZNETINFO.sn[2],gWIZNETINFO.sn[3]);
	printf("Gateway     : %d.%d.%d.%d\n\r",gWIZNETINFO.gw[0],gWIZNETINFO.gw[1],gWIZNETINFO.gw[2],gWIZNETINFO.gw[3]);
	printf("DNS Server  : %d.%d.%d.%d\n\r",gWIZNETINFO.dns[0],gWIZNETINFO.dns[1],gWIZNETINFO.dns[2],gWIZNETINFO.dns[3]);
}


int process_dhcp(void){
	int8_t ret =0;
	while(1){
		ret = DHCP_run();
		if(ret == DHCP_IP_LEASED)
		{
				printf("=============================\r\n");
				print_network_information();
				printf("=============================\r\n");
				break;
		}
		else if(ret == DHCP_FAILED)
		{
			dhcp_retry++;
		}


		if(dhcp_retry > 3)
		{
			DHCP_stop();
			break;
		}
	}
	return ret;
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
