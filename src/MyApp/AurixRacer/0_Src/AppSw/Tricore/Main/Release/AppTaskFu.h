#ifndef APPTASKFU_H_
#define APPTASKFU_H_

#include <Ifx_Types.h>

#include "Basic.h"
#include "AsclinShellInterface.h"
#include "InfineonRacer.h"
#include "PID.h"
#include "IR_Controller.h"

#if BOARD == APPLICATION_KIT_TC237
#include "tft_app.h"
#include "Perf_Meas.h"
#elif BOARD == SHIELD_BUDDY

#endif


//simulator mode selection
#define ON 1
#define OFF 0

#define ENCODER_TEST OFF
#define PID_TEST ON
#define CONVOLUTION OFF
#define LINE_THRESHOLD ON
#define BUFFER OFF
#define ADD_MIDDLE OFF

//macro
#define LEFT_LANE 1
#define RIGHT_LANE 2
#define MIDDLE 3
#define TURNING_PHASE 4

IFX_EXTERN boolean task_flag_1m;
IFX_EXTERN boolean task_flag_10m;
IFX_EXTERN boolean task_flag_100m;
IFX_EXTERN boolean task_flag_1000m;

void appTaskfu_init(void);
void appTaskfu_1ms(void);
void appTaskfu_10ms(void);
void appTaskfu_100ms(void);
void appTaskfu_1000ms(void);
void appTaskfu_idle(void);
void appIsrCb_1ms(void);

typedef struct{
    boolean AEB_flag;
    boolean Avoid_flag;
}Global_flag;

//global variable

void SrvControl(float32);

void AEB(void);
void Avoid(void);


#endif /* APPTASKFU_H_ */
