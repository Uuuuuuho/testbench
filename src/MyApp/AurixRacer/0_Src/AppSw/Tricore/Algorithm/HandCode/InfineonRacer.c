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
LineData IR_LineData
		={0,0,0,0,0,0,0};

float32 MIN_INDEX = CENTER_INDEX - BOUNDARY;
float32 MAX_INDEX = CENTER_INDEX + BOUNDARY;

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
    IR_LineData.Transfer[0] = 1;
    IR_LineData.Transfer[1] = 0;
    IR_LineData.Transfer[2] = -1;
    
    IR_LineData.School_Zone_flag = FALSE;
    IR_LineData.Direction_Determined = FALSE;
}

void InfineonRacer_detectLane(){
	/* IR_LineScan.adcResult 의 정보를 읽어들여서
	 * IR_Ctrl.Ls0Margin, IR_Ctrl.Ls1Margin 정보를 계산한다
	 */



}

void InfineonRacer_control(void){
	;
}

void Line_Buffer(void){
    for(uint32 index = 0; index < LINEMAX; index++){
        IR_LineScan.adcBuffer[0][index] += IR_LineScan.adcResult[0][index];
    }
}

void Line_Buffer_RIGHT(void){
    for(uint32 index = 0; index < LINEMAX; index++){
        IR_LineScan.adcBuffer[1][index] += IR_LineScan.adcResult[1][index];
    }
}

void Line_avgerage(void){
    for(uint32 index = 0; index < LINEMAX; index++){
        IR_LineScan.adcBuffer[0][index] = IR_LineScan.adcBuffer[0][index] / 5;
    }
    
}

void Line_avgerage_RIGHT(void){
    for(uint32 index = 0; index < LINEMAX; index++){
        IR_LineScan.adcBuffer[1][index] = IR_LineScan.adcBuffer[1][index] / 5;
    }
}

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
        	IR_LineData.Result[n] += IR_LineScan.adcBuffer[LEFTLINESCAN][k] * IR_LineData.Transfer[n - k];
        }
    }
}

void convolutionOP_RIGHT(void){
    uint32 n;
    for (n = 0; n < SignalLen + TransferLen - 1; n++)
    {
        uint32 kmin, kmax, k;

        IR_LineData.Result[n] = 0;

        kmin = (n >= TransferLen - 1) ? n - (TransferLen - 1) : 0;
        kmax = (n < SignalLen - 1) ? n : SignalLen - 1;

        for (k = kmin; k <= kmax; k++)
        {
        	IR_LineData.Result[n] += IR_LineScan.adcBuffer[RIGHTLINESCAN][k] * IR_LineData.Transfer[n - k];
        }
    }
}

void clearBuffer(void){ //clear buffer function
    for(uint32 index = 0; index < LINEMAX; index++){
        IR_LineScan.adcBuffer[0][index] = 0;
    }
}

void clearBuffer_RIGHT(void){ //clear buffer function
    for(uint32 index = 0; index < LINEMAX; index++){
        IR_LineScan.adcBuffer[1][index] = 0;
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

void median_filter_RIGHT(void) {
	for (uint32 i = (MEDIAN_SIZE / 2); i < LINEMAX- (MEDIAN_SIZE / 2); i++) {
	      for (uint32 j = -(MEDIAN_SIZE / 2); j <= MEDIAN_SIZE / 2; j++) {
	          IR_LineData.sample[j + (MEDIAN_SIZE / 2)] = IR_LineScan.adcResult[1][i + j];
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
	              IR_LineScan.adcResult[1][i] = IR_LineData.sample[j];
	          }
	      }
	  }
}

void getLineData (void){    //left linescanner only
    uint32 index = 0;
    int MaxVal = 0;

    if(!IR_LineData.Direction_Determined){
    	for(index = IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
            if(IR_LineData.Result[index] > MaxVal){
                IR_LineData.previous = index;
                MaxVal = IR_LineData.Result[index];
            }
        }
    	IR_LineData.Direction_Determined = TRUE;
    }

    else{
    	for(index = IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
            if(IR_LineData.Result[index] > MaxVal){
                IR_LineData.present= index;
                MaxVal = IR_LineData.Result[index];
            }
        }
    	IR_LineData.Direction_Determined = FALSE;
    }
    

}

void getLineData_RIGHT (void){    //left linescanner only
    uint32 index = 0;
    int MaxVal = 0;

    if(!IR_LineData.Direction_Determined){
    	for(index = IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
            if(IR_LineData.Result[index] > MaxVal){
                IR_LineData.previous = index;
                MaxVal = IR_LineData.Result[index];
            }
        }
    	IR_LineData.Direction_Determined = TRUE;
    }

    else{
    	for(index = IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
            if(IR_LineData.Result[index] > MaxVal){
                IR_LineData.present= index;
                MaxVal = IR_LineData.Result[index];
            }
        }
    	IR_LineData.Direction_Determined = FALSE;
    }


}

boolean IsInSchoolZone(void){
    uint32 index = 0;
    uint32 MaxVal = IR_LineData.Result[IR_LineData.present];
    
    uint32 SCHOOLZONE_DETECTION = MaxVal;   //for test. 미분값을 기준으로 미분값의 절반이상이 출력되면, 즉 다른 선이 인식되면

    for(index = IR_LineData.present + IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
        if(IR_LineData.Result[index] > SCHOOLZONE_DETECTION){
            IR_LineData.School_Zone_flag = TRUE;

        }
    }
    return IR_LineData.School_Zone_flag;
}

boolean IsOutSchoolZone(void){
    uint32 index = 0;
    uint32 MaxVal = IR_LineData.Result[IR_LineData.present];
    
    uint32 SCHOOLZONE_DETECTION = MaxVal;   //for test. 미분값을 기준으로 미분값의 절반이상이 출력되면, 즉 다른 선이 인식되면

    for(index = IR_LineData.present + IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
        if(IR_LineData.Result[index] > SCHOOLZONE_DETECTION){
            IR_LineData.School_Zone_flag = FALSE;
        }
    }
    return IR_LineData.School_Zone_flag;
}


float32 Direction(void){
    return (IR_LineData.present - IR_LineData.previous);
    //return (IR_LineData.present - CENTER_INDEX);
}

float32 Direction_CENTER(void){
    //return (IR_LineData.present - IR_LineData.previous);
    return (IR_LineData.present - CENTER_INDEX);
}

boolean Boundary(void){
	if((IR_LineData.present < MAX_INDEX) && (IR_LineData.present > MIN_INDEX))
		return FALSE;
	else
		return TRUE;
}



