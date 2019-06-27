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
//	IR_LineData.Transfer[0] = -1;
//	IR_LineData.Transfer[1] = 0;
//	IR_LineData.Transfer[2] = 1;
//    median_filter();
//    convolutionOP();
//    getLineData();
}

void InfineonRacer_control(void){
	;
}
/*
void convolutionOP(void){
  uint32 n;

  for (n = 0; n < SignalLen + TransferLen - 1; n++)
  {
    uint32 kmin, kmax, k;

    IR_LineData.Result[n] = 0;

    kmin = (n >= TransferLen - 1) ? n - (TransferLen - 1) : 0;
    kmax = (n < SignalLen - 1) ? n : SignalLen - 1;

    for (k = kmin; k <= kmax; k++)
    {
    	IR_LineData.Result[n] += IR_LineScan.adcResult[0][k] * IR_LineData.Transfer[n - k];
    }
  }
}


void median_filter(void) {

	for (uint32 i = (MEDIAN_SIZE / 2); i < LINEMAX- (MEDIAN_SIZE / 2); i++) {
    	for (uint32 j = -(MEDIAN_SIZE / 2); j <= MEDIAN_SIZE / 2; j++) {
			IR_LineData.sample[j + (MEDIAN_SIZE / 2)] = IR_LineScan.adcResult[0][i + j];
			if (j == MEDIAN_SIZE / 2) {
				for (uint32 m = 0; m < MEDIAN_SIZE - 1; m++) { //Sample을 정렬(Selection Sort)
					for (uint32 n = m + 1; n < MEDIAN_SIZE; n++) {
						if (IR_LineData.sample[m] < IR_LineData.sample[n]) {
							IR_LineData.temp = IR_LineData.sample[m];
							IR_LineData.sample[m] = IR_LineData.sample[n];
							IR_LineData.sample[n] = IR_LineData.temp;
						}
					}
				}
				IR_LineScan.adcResult[0][i] = IR_LineData.sample[j];
			}
		}
	}
}

void getLineData (void){
    
	uint32 index = 0;
	uint8 IsCompleteLine = 1;
	uint16 pixelCounter = 0;



	index = 0;

    for(index = IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
            if(IR_LineData.Result[index] == 0){
                if(pixelCounter == 0){
                    IR_LineData.head == index;
                    pixelCounter++;
                }
                else if(pixelCounter == 1){
                    pixelCounter++;
                }
                else{
                    IR_LineData.tail = index;
                }
            }
    }
}

*/





