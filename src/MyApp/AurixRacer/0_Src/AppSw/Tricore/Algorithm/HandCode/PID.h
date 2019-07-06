#ifndef PID_H_
#define PID_H_

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <Ifx_Types.h>
#include "Configuration.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/




/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct{
    float32 TargetSpeed;
    float32 SamplingTime;
    float32 Time;
    float32 error;
    float32 current;
    float32 pre_error;
    float32 max;	//output maximum
    float32 min;	//output minimum
    float32 Pout;
    float32 Iout;
    float32 integral;
    float32 Dout;
    float32 derivative;
    float32 output;
    float32 nextSpeed;

    //should be configured
    float32  Kp;
    float32 Ki; 
    float32 Kd;
}PID_Control;


/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN PID_Control IR_PID_Control;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_EXTERN void PID_init (void);
IFX_EXTERN void PID_control(void);
IFX_EXTERN void get_Speed(float32 speed);   //encoder의 값을 [m/s]로 calculate해서 speed로 줄 것
IFX_EXTERN void set_Speed(float32 target);
IFX_EXTERN void set_propotion(float32 P, float32 I, float32 D);
IFX_EXTERN void set_SamplingTime(float32 time);
IFX_EXTERN void set_Min_Max_Output(float32 min, float32 max);
IFX_EXTERN float32 next_Vol();


#endif

