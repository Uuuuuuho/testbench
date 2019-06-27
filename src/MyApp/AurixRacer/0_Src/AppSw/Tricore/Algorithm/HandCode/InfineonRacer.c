/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "InfineonRacer.h"
#include "Basic.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

InfineonRacer_t IR_Ctrl  /**< \brief  global data */
		={64, 64, FALSE  };
/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void InfineonRacer_init(void){
	;
}

void InfineonRacer_detectLane(){
	/* IR_LineScan.adcResult 의 정보를 읽어들여서
	 * IR_Ctrl.Ls0Margin, IR_Ctrl.Ls1Margin 정보를 계산한다
	 */
    median_filter();
    convolutionOP();
    getLineData();
}

void InfineonRacer_control(void){
	;
}

void convolutionOP(){
  uint32 n;

  for (n = 0; n < SignalLen + TransferLen - 1; n++)
  {
    uint32 kmin, kmax, k;

    Result[n] = 0;

    kmin = (n >= TransferLen - 1) ? n - (TransferLen - 1) : 0;
    kmax = (n < SignalLen - 1) ? n : SignalLen - 1;

    for (k = kmin; k <= kmax; k++)
    {
        Result[n] += IR_LineScan.adcResult[chnIx][k] * Kernel[n - k];
    }
  }
}
}

void median_filter() {

	for (uchar_T i = (MEDIAN_SIZE / 2); i < LINEMAX- (MEDIAN_SIZE / 2); i++) {
    	for (uchar_T j = -(MEDIAN_SIZE / 2); j <= MEDIAN_SIZE / 2; j++) {
			sample[j + (MEDIAN_SIZE / 2)] = IR_LineScan.adcResult[0][i + j];
			if (j == MEDIAN_SIZE / 2) {
				for (uchar_T m = 0; m < MEDIAN_SIZE - 1; m++) { //Sample을 정렬(Selection Sort)
					for (uchar_T n = m + 1; n < MEDIAN_SIZE; n++) {
						if (sample[m] < sample[n]) {
							temp = sample[m];
							sample[m] = sample[n];
							sample[n] = temp;
						}
					}
				}
				IR_LineScan.adcResult[0][i] = sample[j];
			}
		}
	}
}

void getLineData (){
    
	uint32 index = 0;
	uint8 IsCompleteLine = 1;
	uint16 pixelCounter = 0;



	index = 0;

    for(index = IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
            if(Result[index] == 0){
                if(pixelCounter == 0){
                    head == index;
                    pixelCounter++;
                }
                else if(pixelCounter == 1){
                    pixelCounter++;
                }
                else{
                    tail = index;
                }
            }
    }
}







