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
    BasicLineScan_run();
    median_filter();
    Line_Buffer();
#if LINE_THRESHOLD == ON
    threshold_LINE();

    if(!is_THRESHOLD())     //lane을 전혀 찾지못하는 경우
        SrvControl(-0.1);    //turn left to detect line
    else{
        if(Boundary()){ //if present index is out of boundary
            if(!Over_Boundary()){   //when over minimum boundary
                SrvControl(Direction_CENTER());    //determine wheel direction
            }
            else{   //when out of boundary
                SrvControl(-0.1);    //turn left to detect line
            }
        }
    }


    if(!IR_LineData.School_Zone_flag)
        IsInSchoolZone_THRESHOLD();
    else
        IsOutSchoolZone_THRESHOLD();
    
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

    if(Checking_PSD()){
        if(!IR_LineData.School_Zone_flag){
            AEB();
        }
        else{
            Avoid();
        }
    }

    else{
        IR_setMotor0Vol(testVol);
    }
    
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

        //checking PSD
        BasicVadcBgScan_run();
        
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

    float32 result = -0.4 - diff / 108;
    IR_setSrvAngle(result);


}

void AEB(void){
    IR_setMotor0Vol(-1);
}

void Avoid(void){
    IR_setSrvAngle(-1);   //first turn left, assuming second line is on the left
    resetPSD();             //reset PSD counter
}
