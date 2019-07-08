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
float32 signORunsign = 0;
uint32 Obstacle_flag = FALSE;
float32 Speed_Out_Of_School_Zone = 100;
float32 P = 10,I = 0.1, D = 1;   //PID control test
float32 time = 0.1;             //PID sampling time
float32 speed_min = -0.005, speed_max = 0.005; //PID min, max configuration
uint32 WHICH_LANE = LEFT_LANE;

void appTaskfu_init(void){
    BasicLineScan_init();
    BasicPort_init();
    BasicGtmTom_init();
    BasicVadcBgScan_init();
    BasicGpt12Enc_init();
    AsclinShellInterface_init();
    PID_init();

    // for PID tuning
//    set_propotion(P,I,D);
//    set_SamplingTime(time);
//    set_Min_Max_Output(speed_min, speed_max);
    
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
    
    SrvControl(0);//go straight

    //empty buffer after calculating average of speed
//    Speed_Avg();
    
#if PID_TEST == ON
//            IR_setMotor0Vol(-0.5);
            if(task_cnt_10m % 10 == 0){        
                Speed_Buff();
            }
            if(task_cnt_10m % 50 == 0){
                Speed_Avg();
                get_Speed(SpeedCalculation());    //get current speed
                    
//                if(!initial_speed()){
 //                  IR_setMotor0Vol(-0.8);
  //              }
                
   //             else{
//                    set_Speed(Speed_Out_Of_School_Zone);                        //set next speed
                    PID_control();                                      //calculate next speed
                    IR_setMotor0Vol(next_Vol());    //set next speed voltage
    //            }
            }
#endif

#if BUFFER == OFF//SHOULD BE ON/////////////////////////////////////////////
    //checking PSD
    BasicVadcBgScan_run();
    
    if(Checking_PSD()){    //determine avoid or AEB
        Obstacle_flag = TRUE;   
        IR_LineData.SchoolZone_Status = ON; //to debug

        if(!IR_LineData.School_Zone_flag){  //Out of school zone
//            AEB();
        }
        
        else{   //In school zone
            switch(get_Dash()){ //dash buffer를 활용하여 determine next lane direction
            //for now it's set to LEFT_LANE
                case LEFT_LANE :
                    WHICH_LANE = RIGHT_LANE;
                    break;
                case RIGHT_LANE :
                    WHICH_LANE = LEFT_LANE;
                    break;
            }
            
            Avoid();
            

            switch(WHICH_LANE){
                case LEFT_LANE: //when the car's on the left lane
                    if(IR_AdcResult[2] < THRESHOLD_VOL_RIGHT){ //right PSD can't detect anything
                        Obstacle_flag = MIDDLE;
                        IR_LineData.SchoolZone_Status = MIDDLE;
                    }
                break;
                    
                case RIGHT_LANE:
                    if(IR_AdcResult[1] < THRESHOLD_VOL){ //left PSD can't detect anything
                        Obstacle_flag = MIDDLE;
                        IR_LineData.SchoolZone_Status = MIDDLE;
                    }
                break;
            }
            
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
    
    if(Obstacle_flag == OFF){   //regardless of school zone
        if(!is_THRESHOLD()){     //left lane을 전혀 찾지못하는 경우
            if(is_THRESHOLD_RIGHT()){   //right lane detected
                if(Boundary_RIGHT()){ //if present_RIGHT index is out of boundary(0~60 or 80~120)
                    if(!Over_Boundary_RIGHT()){   
                        //when stick to right side
                        SrvControl(100);    //turn left
                    }
                    else{   //when out of boundary
                        SrvControl(Direction_CENTER_RIGHT());     //turn left to detect line, when not able to detect on the left and right at the same time
                    }
                }
                else
                    SrvControl(0);//right lane in the boundary. go straight
            }
            else    //left & right lane not detected    
                SrvControl(100);   //turn left
        }
        
        else{   //left lane detected
            if(Boundary()){ //if present index is out of boundary
                if(!Over_Boundary()){   //when over minimum boundary
                    SrvControl(Direction_CENTER());    //determine wheel direction
                }
                else{   //when out of boundary
                    if(isEndOfLEFT()){  //when car stick to left side
                        SrvControl(-100);   //turn right
                    }
                    else{
                        SrvControl(100);    //turn left to detect line
                    }
                }
            }
            else{   //go straight
                SrvControl(0);
            }
        }
    }

    else if(Obstacle_flag == MIDDLE){   //while changing lane
        Avoid();
        
#if ADD_MIDDLE == ON    //lane을 잘못잡는 경우에 대한 대비
        //in case of incorrect dotted lane detection        
        switch(get_Dash()){ //dash buffer를 활용하여 determine next lane direction
            case LEFT_LANE :
                WHICH_LANE = RIGHT_LANE;    
                break;
            case RIGHT_LANE :
                WHICH_LANE = LEFT_LANE;
                break;
        }
        
#endif
        if(task_cnt_10m % 50 == 0){ //every 500ms check whether it's out of 'MIDDLE' state

            switch(WHICH_LANE){
                case LEFT_LANE:
                    if(IR_AdcResult[1] < THRESHOLD_VOL){ //left PSD can't find obstacle
                        Obstacle_flag = OFF;
                        IR_LineData.SchoolZone_Status = OFF;
                        resetPSD();             //reset PSD counter. To avoid util the obstacle won't be found
                        clear_Dash();
                    }
                    break;
                    
                case RIGHT_LANE:
                    if(IR_AdcResult[2] < THRESHOLD_VOL_RIGHT){ //right PSD can't find obstacle
                        Obstacle_flag = OFF;
                        IR_LineData.SchoolZone_Status = OFF;
                        resetPSD();             //reset PSD counter. To avoid util the obstacle won't be found
                        clear_Dash();
                    }
                    break;
            }
        }

    }
    
    clearBuffer();
    clearBuffer_RIGHT();
    
    
#endif

#endif

//BUFFER idea를 사용하는 경우
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

    
	if(task_cnt_10m == 1000){
		task_cnt_10m = 0;
	}

	if(task_cnt_10m%2 == 0){
        
        BasicGtmTom_run();
    	BasicPort_run();

        
		if(IR_Ctrl.basicTest == FALSE){ //no need. gonna be deleted
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
