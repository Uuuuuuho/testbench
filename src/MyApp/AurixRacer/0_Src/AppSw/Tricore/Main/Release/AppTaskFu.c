#include "AppTaskFu.h"

static sint32 task_cnt_1m = 0;
static sint32 task_cnt_10m = 0;
static sint32 task_cnt_100m = 0;
static sint32 task_cnt_1000m = 0;

boolean task_flag_1m = FALSE;
boolean task_flag_10m = FALSE;
boolean task_flag_100m = FALSE;
boolean task_flag_1000m = FALSE;

float32 testVol = 1;
float32 testSrv = 0;
float32 Target_speeed = 0, error = 0, Kp = 0, Current_Speed = 0, NextVol = 0;
float32 signORunsign = 0;
uint32 Obstacle_flag = FALSE;

uint32 WHICH_LANE = LEFT_LANE;

void appTaskfu_init(void){
	BasicLineScan_init();
	BasicPort_init();
    BasicGtmTom_init();
    BasicVadcBgScan_init();
    BasicGpt12Enc_init();
    AsclinShellInterface_init();
    IR_Encoder.buff = 0;
    
#if BOARD == APPLICATION_KIT_TC237
    tft_app_init(1);
    perf_meas_init();
#elif BOARD == SHIELD_BUDDY

#endif

#if CODE == CODE_HAND
    InfineonRacer_init();
#elif CODE == CODE_ERT
    IR_Controller_initialize();
#else

#endif
}

void appTaskfu_1ms(void)
{
	task_cnt_1m++;
	if(task_cnt_1m == 1000){
		task_cnt_1m = 0;

		//printf("1000ms!\n");
	}
	if(task_cnt_1m %100 ==0){

		BasicGpt12Enc_IR_Encoder_reset();
	}
    BasicGpt12Enc_run();
    SpeedCalculation();
    Speed_Buff();
    //printf("1ms!\n");




}


void appTaskfu_10ms(void)
{
	task_cnt_10m++;
    //empty buffer after calculating average of speed
    Speed_Avg();
#if BUFFER == OFF   
    //checking PSD
    BasicVadcBgScan_run();
    
    if(Checking_PSD()){    //determine avoid or AEB
        Obstacle_flag = TRUE;   

        if(!IR_LineData.School_Zone_flag){  //Out of school zone
            AEB();
        }
        else{   //In school zone
            switch(get_Dash()){ //dash buffer를 활용하여 determine next lane direction
                case LEFT_LANE :
                    WHICH_LANE = RIGHT_LANE;
                    break;
                case RIGHT_LANE :
                    WHICH_LANE = LEFT_LANE;
                    break;
            }
            
            Avoid();
            
            switch(WHICH_LANE){
                case LEFT_LANE:
                    if(IR_AdcResult[2] < THRESHOLD_VOL){ //right PSD can't detect anything
                        resetPSD();             //reset PSD counter. To avoid util the obstacle won't be found
                        Obstacle_flag = MIDDLE;
                    }
                    break;
                    
                case RIGHT_LANE:
                    if(IR_AdcResult[1] < THRESHOLD_VOL){ //left PSD can't detect anything
                        resetPSD();             //reset PSD counter. To avoid util the obstacle won't be found
                        Obstacle_flag = MIDDLE;
                    }
                    break;
            }
            
        }
    }

    else{
        IR_setMotor0Vol(testVol);
    }

    if(Obstacle_flag == MIDDLE){
        switch(WHICH_LANE){
            case LEFT_LANE:
                if(IR_AdcResult[1] < THRESHOLD_VOL){ //left PSD can't find obstacle
                    Obstacle_flag = OFF;
                    clear_Dash();
                }
                break;
                
            case RIGHT_LANE:
                if(IR_AdcResult[2] < THRESHOLD_VOL_RIGHT){ //right PSD can't find obstacle
                    Obstacle_flag = OFF;
                    clear_Dash();
                }
                break;
        }

    }



    //10ms unit line scanning & schoolzone check
    BasicLineScan_run();
    //LEFT lane scanner
    median_filter();
    Line_Buffer();

    //RIGHT lane scanner
    median_filter_RIGHT();
    Line_Buffer_RIGHT();
    
#if LINE_THRESHOLD == ON
    //get line data
    threshold_LINE();
    threshold_LINE_RIGHT();

    //checking school zone
    if(task_cnt_10m % 50 == 0){
        if(!IR_LineData.School_Zone_flag)
            IsInSchoolZone_THRESHOLD();
        else
            IsOutSchoolZone_THRESHOLD();
    }
    
    if(!IR_LineData.School_Zone_flag){      //Out of school zone 
        if(!is_THRESHOLD()){     //left lane을 전혀 찾지못하는 경우
            if(Boundary_RIGHT()){ //if present_RIGHT index is out of boundary(0~60 or 80~120)
                if(!Over_Boundary_RIGHT()){   //when over minimum boundary
                    SrvControl(Direction_CENTER_RIGHT());    //determine wheel direction
                }
                else{   //when out of boundary
                    SrvControl(-0.8);    //turn left to detect line, when not able to detect on the left and right at the same time
                }
            }
            
        }
        
        else{   //left lane detected
            if(Boundary()){ //if present index is out of boundary(0 ~ 40 or 60 ~ 120)
                if(!Over_Boundary()){   //when over minimum boundary
                    SrvControl(Direction_CENTER());    //determine wheel direction
                }
                else{   //when out of boundary
                    if(isEndOfLEFT()){  //when car stick to left side
                        SrvControl(-0.8);   //turn right
                    }
                    else{
                        SrvControl(-0.1);    //turn left to detect line
                    }
                }
            }
        }
    }

    else{       //In school zone
        if(Obstacle_flag == OFF){
            if(!is_THRESHOLD()){     //left lane을 전혀 찾지못하는 경우
                if(Boundary_RIGHT()){ //if present_RIGHT index is out of boundary(0~60 or 80~120)
                    if(!Over_Boundary_RIGHT()){   //when over minimum boundary
                        SrvControl(Direction_CENTER_RIGHT());    //determine wheel direction
                    }
                    else{   //when out of boundary
                        SrvControl(-0.8);    //turn left to detect line, when not able to detect on the left and right at the same time
                    }
                }
            }
            
            else{   //left lane detected
                if(Boundary()){ //if present index is out of boundary
                    if(!Over_Boundary()){   //when over minimum boundary
                        SrvControl(Direction_CENTER());    //determine wheel direction
                    }
                    else{   //when out of boundary
                        if(isEndOfLEFT()){  //when car stick to left side
                            SrvControl(-0.8);   //turn right
                        }
                        else{
                            SrvControl(-0.1);    //turn left to detect line
                        }
                    }
                }
            }
        }

        else if(Obstacle_flag == MIDDLE){   //while changing lane
            SrvControl(-0.4);   //straight forward
        }
    }
    clearBuffer();
    clearBuffer_RIGHT();
    
    
#endif

#endif

#if BUFFER == ON
    //get line data in every 0.01 sec
    if(task_cnt_10m % 5 == 0){
        BasicLineScan_run();

        //LEFT LINE
        median_filter();
        Line_Buffer();

    //RIGHT LINE
//    median_filter_RIGHT();
//    Line_Buffer_RIGHT();
    }
    
    if(task_cnt_10m % 25 == 0){
    	//LEFT LINE
    	Line_avgerage();

#if CONVOLUTION == ON
    	convolutionOP();
        getLineData();
#endif

#if LINE_THRESHOLD == ON
        threshold_LINE();
#endif
        //RIGHT LINE
//        Line_avgerage_RIGHT();
//        convolutionOP_RIGHT();
//        getLineData_RIGHT();

    }

    if(task_cnt_10m % 50 == 0){
        if(!IR_LineData.School_Zone_flag)
            IsInSchoolZone();
        else
            IsOutSchoolZone();
#if CONVOLUTION == ON
        if(Boundary()){ //if present index is out of boundary
          	SrvControl(Direction());    //determine wheel direction
        }
#endif

#if LINE_THRESHOLD == ON
        if(!is_THRESHOLD())
            SrvControl(-0.1);    //turn left to detect line
        else{
            if(Boundary()){ //if present index is out of boundary
                if(!Over_Boundary()){   //if is in the boundary
                    SrvControl(Direction_CENTER());    //determine wheel direction
                }
                else{   //when out of boundary
                    SrvControl(-0.1);    //turn left to detect line
                }
            }
        }
#endif
    }
    
#endif


    
#if ENCODER_TEST == ON
	IR_setMotor0Vol(testVol);
#endif

#if PID_TEST == ON
    IR_setMotor0Vol(NextVol);   //calculated by PID & Speed2Vol(void)
#endif

    
	if(task_cnt_10m == 1000){
		task_cnt_10m = 0;
	}

	if(task_cnt_10m%2 == 0){
        
        BasicGtmTom_run();
    	BasicPort_run();

        
		if(IR_Ctrl.basicTest == FALSE){
			#if CODE == CODE_HAND
				InfineonRacer_control();
			#elif CODE == CODE_ERT
				IR_Controller_step();
			#else

			#endif
		}
		AsclinShellInterface_runEncScan();
	}

}

void appTaskfu_100ms(void)
{
	task_cnt_100m++;


#if PID_TEST == ON
    PID(void);
    Speed2Vol(void);
    
#endif

#if ENCODER_TEST == ON
    printf("%f\n", IR_Encoder.speed);
#endif

	if(task_cnt_100m == 1000){
		task_cnt_100m = 0;
	}


	//printf("100ms!\n");
#if BOARD == APPLICATION_KIT_TC237
	if(task_cnt_100m % REFRESH_TFT == 0){
		tft_app_run();
	}

#elif BOARD == SHIELD_BUDDY

#endif
}

void appTaskfu_1000ms(void)
{
	task_cnt_1000m++;
    
#if ENCODER_TEST == ON
    if(task_cnt_1000m % 2 == 0){
        testSrv = -0.3;
    }

    if(task_cnt_1000m % 2 == 1){
        testSrv =-1;
    }

    
    if(task_cnt_1000m % 5 == 0){
        testVol += 0.1;
    }
    
	if(testVol > 0.5)
		testVol = -1;

#endif

	//IR_setMotor0Vol(testVol);
	//testVol++;
	//if(!(task_cnt_1000m % 10))
	//testVol = 0;


	if(task_cnt_1000m == 1000){
		task_cnt_1000m = 0;
        
	}
	//printf("1000ms!\n");
 
#if ENCODER_TEST == ON
	IR_setSrvAngle(testSrv);
#endif

}

void appTaskfu_idle(void){
	AsclinShellInterface_run();
#if BOARD == APPLICATION_KIT_TC237
	perf_meas_idle();
#elif BOARD == SHIELD_BUDDY

#endif
	BasicGpt12Enc_IR_Encoder_turn();

}

void appIsrCb_1ms(void){
//	BasicGpt12Enc_run();
//    Speed_Avg();
}

void PID(void){
    Current_Speed = IR_Encoder.speed;
    error = Target_speeed - Current_Speed;
    Current_Speed = Current_Speed + Kp * error;
}

void Speed2Vol(void){
    //write equation to convert 'Current_Speed' to Vol through the linear equation
    //NextVol = ~~~
}

void SrvControl(float32 diff){

    float32 result = -0.4 - (diff / 108);
    IR_setSrvAngle(result);


}

void AEB(void){
    IR_setMotor0Vol(-1);
}

void Avoid(void){
    switch(WHICH_LANE){
        case LEFT_LANE :    //when on the left lane
            IR_setSrvAngle(-1);   //turn right, assuming second line is on the left
            break;
        case RIGHT_LANE:    //when on the right lane
            IR_setSrvAngle(-0.2);   //turn left
            break;
    }
}
