#include "AppTaskFu.h"

static sint32 task_cnt_1m = 0;
static sint32 task_cnt_10m = 0;
static sint32 task_cnt_100m = 0;
static sint32 task_cnt_1000m = 0;

boolean task_flag_1m = FALSE;
boolean task_flag_10m = FALSE;
boolean task_flag_100m = FALSE;
boolean task_flag_1000m = FALSE;


float32 testVol = 0;
float32 testSrv = -0.5;




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
	//printf("1ms!\n");

}


void appTaskfu_10ms(void)
{
	task_cnt_10m++;
    //empty buffer after calculating average of speed
    Speed_Avg();
    IR_Encoder.buff = 0;
    
	IR_setMotor0Vol(testVol);
	IR_setSrvAngle(testSrv);
	if(task_cnt_10m == 1000){
		task_cnt_10m = 0;
		//BasicGpt12Enc_IR_Encoder_reset();
	}

	if(task_cnt_10m%2 == 0){
		BasicLineScan_run();
        median_filter();
        Line_Buffer();
        
		BasicPort_run();
		BasicGtmTom_run();
		BasicVadcBgScan_run();

		if(IR_Ctrl.basicTest == FALSE){
			#if CODE == CODE_HAND
				InfineonRacer_control();
			#elif CODE == CODE_ERT
				IR_Controller_step();
			#else

			#endif
		}
//		AsclinShellInterface_runEncScan();
	}

}

void appTaskfu_100ms(void)
{
	task_cnt_100m++;
    //get line data in every 0.1 sec
    Line_avgerage();
    convolutionOP();
	getLineData();
    
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

    printf("%f\n", IR_Encoder.speed);
    
	if(testVol > 1.0)
		testVol = 0;

	testSrv += 0.1;
	if(testSrv > 0.5)
		testSrv = -0.5;

	//IR_setMotor0Vol(testVol);
	//testVol++;
	//if(!(task_cnt_1000m % 10))
		//testVol = 0;

    if(task_cnt_1000m % 5 == 0){
        testVol += 0.1;
    }
    
	if(task_cnt_1000m == 1000){
		task_cnt_1000m = 0;
	}
	//printf("1000ms!\n");


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
	BasicGpt12Enc_run();
    Speed_Avg();
}







