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

float32 MIN_INDEX_RIGHT = CENTER_INDEX_RIGHT - BOUNDARY;
float32 MAX_INDEX_RIGHT = CENTER_INDEX_RIGHT + BOUNDARY;

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
    
    IR_LineData.School_Zone_flag = TRUE;
    IR_LineData.Direction_Determined = FALSE;
    IR_LineData.Direction_Determined_RIGHT = FALSE;
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
        IR_LineScan.adcBuffer[0][index] /= 5;
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

boolean is_THRESHOLD(void){
    uint32 index = 0;
    float32 threshold = THRESHOLD;

    for(index = IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
        if(IR_LineScan.adcBuffer[0][index] < threshold){
            return TRUE;
        }
    }
    return FALSE;
}
boolean is_THRESHOLD_MIDDLE(void){
    uint32 index = 0;
    float32 threshold = THRESHOLD;
    uint32 half_index = LINEMAX/2;
    for(index = IGNOREIDX; index < half_index; index++){
        if(IR_LineScan.adcBuffer[0][index] < threshold){
            return TRUE;
        }
    }
    return FALSE;
}

boolean is_THRESHOLD_RIGHT(void){
    uint32 index = 0;
    float32 threshold = THRESHOLD_RIGHT;

    for(index = IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
        if(IR_LineScan.adcBuffer[1][index] < threshold){
            return TRUE;
        }
    }
    return FALSE;
}


uint32 get_Dash(void){
    if(is_THRESHOLD())  //left dash buffer
        IR_LineData.Dash_Left++;

    if(is_THRESHOLD_RIGHT())
        IR_LineData.Dash_Right++;

    if(IR_LineData.Dash_Left > IR_LineData.Dash_Right){
        IR_LineData.Next_Lane = RIGHT_LANE; //다음에 우회전
        return RIGHT_LANE;
    }
    else{
        IR_LineData.Next_Lane = LEFT_LANE;  //다음에 좌회전
        return LEFT_LANE;
    }
    
}

void clear_Dash(void){
    IR_LineData.Dash_Left = 0;
    IR_LineData.Dash_Right = 0;
}

void threshold_LINE(void){
    uint32 index = 0;
    float32 threshold = THRESHOLD;
    float32 MinVal = 500000;

    if(!IR_LineData.Direction_Determined){
    	for(index = IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
            if(IR_LineScan.adcBuffer[0][index] < threshold){
                if(IR_LineScan.adcBuffer[0][index] < MinVal){
                    IR_LineData.previous = index;
                    MinVal = IR_LineScan.adcBuffer[0][index];
                }
            }
        }
    	IR_LineData.Direction_Determined = TRUE;
    }

    else{
    	for(index = IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
            if(IR_LineScan.adcBuffer[0][index] < threshold){
                if(IR_LineScan.adcBuffer[0][index] < MinVal){
                    IR_LineData.present = index;
                    MinVal = IR_LineScan.adcBuffer[0][index];
                }
            }
        }
    	IR_LineData.Direction_Determined = FALSE;
    }
}

void threshold_LINE_RIGHT(void){
    uint32 index = 0;
    float32 threshold = THRESHOLD_RIGHT;
    float32 MinVal = 500000;

    if(!IR_LineData.Direction_Determined_RIGHT){
    	for(index = IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
            if(IR_LineScan.adcBuffer[1][index] < threshold){
                if(IR_LineScan.adcBuffer[1][index] < MinVal){
                    IR_LineData.previous_RIGHT = index;
                    MinVal = IR_LineScan.adcBuffer[1][index];
                }
            }
        }
    	IR_LineData.Direction_Determined_RIGHT = TRUE;
    }

    else{
    	for(index = IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
            if(IR_LineScan.adcBuffer[1][index] < threshold){
                if(IR_LineScan.adcBuffer[1][index] < MinVal){
                    IR_LineData.present_RIGHT = index;
                    MinVal = IR_LineScan.adcBuffer[1][index];
                }
            }
        }
    	IR_LineData.Direction_Determined_RIGHT = FALSE;
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
                IR_LineData.previous_RIGHT= index;
                MaxVal = IR_LineData.Result[index];
            }
        }
    	IR_LineData.Direction_Determined_RIGHT= TRUE;
    }

    else{
    	for(index = IGNOREIDX; index < LINEMAX - IGNOREIDX; index++){
            if(IR_LineData.Result[index] > MaxVal){
                IR_LineData.present_RIGHT = index;
                MaxVal = IR_LineData.Result[index];
            }
        }
    	IR_LineData.Direction_Determined_RIGHT= FALSE;
    }


}

boolean IsInSchoolZone_THRESHOLD(void){
    uint32 index = 0;
    uint32 half_index = LINEMAX / 2;
    float32 SCHOOLZONE_DETECTION = THRESHOLD;   //for test. 최솟값과 유사한 값이 나타나는지 측정. 라인이 하나 더 나타나는지 측정
    uint32 line_count = 0;

    //left lane scanner school zone check
    
    for(index = IGNOREIDX; index < half_index; index ++){
        if(IR_LineScan.adcBuffer[0][index] < SCHOOLZONE_DETECTION){
            line_count++;
            break;
        }
    }

    for(index = half_index; index < LINEMAX - IGNOREIDX; index++){
        if(IR_LineScan.adcBuffer[0][index] < SCHOOLZONE_DETECTION){
            line_count++;
            break;
        }
    }

    SCHOOLZONE_DETECTION = THRESHOLD_RIGHT;   //for test. 최솟값과 유사한 값이 나타나는지 측정. 라인이 하나 더 나타나는지 측정

    for(index = IGNOREIDX; index < half_index; index ++){
        if(IR_LineScan.adcBuffer[1][index] < SCHOOLZONE_DETECTION){
            line_count++;
            break;
        }
    }

    for(index = half_index; index < LINEMAX - IGNOREIDX; index++){
        if(IR_LineScan.adcBuffer[1][index] < SCHOOLZONE_DETECTION){
            line_count++;
            break;
        }
    }

    if(line_count > 2)
        IR_LineData.School_Zone_flag = TRUE;

    else
        IR_LineData.School_Zone_flag = FALSE;
    
    return IR_LineData.School_Zone_flag;
}

boolean IsOutSchoolZone_THRESHOLD(void){
    uint32 index = 0;
    uint32 half_index = LINEMAX / 2;
    float32 SCHOOLZONE_DETECTION = THRESHOLD;   //for test. 최솟값과 유사한 값이 나타나는지 측정. 라인이 하나 더 나타나는지 측정
    uint32 line_count = 0;

    //left lane scanner school zone check
    
    for(index = IGNOREIDX; index < half_index; index ++){
        if(IR_LineScan.adcBuffer[0][index] < SCHOOLZONE_DETECTION){
            line_count++;
            break;
        }
    }

    for(index = half_index; index < LINEMAX - IGNOREIDX; index++){
        if(IR_LineScan.adcBuffer[0][index] < SCHOOLZONE_DETECTION){
            line_count++;
            break;
        }
    }
    //right lane checking school zone
    SCHOOLZONE_DETECTION = THRESHOLD_RIGHT;   //for test. 최솟값과 유사한 값이 나타나는지 측정. 라인이 하나 더 나타나는지 측정

    for(index = IGNOREIDX; index < half_index; index ++){
        if(IR_LineScan.adcBuffer[1][index] < SCHOOLZONE_DETECTION){
            line_count++;
            break;
        }
    }

    for(index = half_index; index < LINEMAX - IGNOREIDX; index++){
        if(IR_LineScan.adcBuffer[1][index] < SCHOOLZONE_DETECTION){
            line_count++;
            break;
        }
    }

    if(line_count > 2)
        IR_LineData.School_Zone_flag = FALSE;

    else
        IR_LineData.School_Zone_flag = TRUE;
    
    return IR_LineData.School_Zone_flag;
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

float32 Direction_CENTER_RIGHT(void){
    return (IR_LineData.present_RIGHT - CENTER_INDEX);
}

boolean Boundary(void){
	if((IR_LineData.present < MAX_INDEX) && (IR_LineData.present > MIN_INDEX))
		return FALSE;
	else
		return TRUE;
}


boolean Boundary_RIGHT(void){
	if((IR_LineData.present_RIGHT < MAX_INDEX_RIGHT) && (IR_LineData.present_RIGHT> MIN_INDEX_RIGHT))
		return FALSE;
	else
		return TRUE;
}


boolean Over_Boundary(void){
    if(IR_LineData.present < MIN_INDEX)
        return TRUE;
    else
        return FALSE;
}

boolean isEndOfLEFT(void){
    if(IR_LineData.present > 115)   //恙祀쪽에 아주 많이 붙은 경우
        return TRUE;
    else
        return FALSE;
}

boolean Over_Boundary_RIGHT(void){
    if(IR_LineData.present_RIGHT < MIN_INDEX_RIGHT)
        return TRUE;
    else
        return FALSE;
}

