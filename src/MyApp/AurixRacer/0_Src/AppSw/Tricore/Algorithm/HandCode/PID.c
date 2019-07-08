/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "PID.h"
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

PID_Control IR_PID_Control;     /**< \brief  global data */

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void PID_init (void){   //should be init in apptask init function
    //initially test configured
    IR_PID_Control.TargetSpeed = 0;
    IR_PID_Control.SamplingTime = 0.1;
    IR_PID_Control.Time = 0;
    IR_PID_Control.error = 0; 
    IR_PID_Control.current = 0;
    IR_PID_Control.pre_error = 0;
    IR_PID_Control.max = 20;	//output maximum
    IR_PID_Control.min = -20;	//output minimum
    IR_PID_Control.Pout = 0;
    IR_PID_Control.Iout = 0;
    IR_PID_Control.integral = 0;
    IR_PID_Control.Dout = 0;
    IR_PID_Control.derivative = 0;
    IR_PID_Control.output = 0;
    IR_PID_Control.nextSpeed= 0;

    //should be configured
    IR_PID_Control.Kp = 5;
    IR_PID_Control.Ki = 0.05;
    IR_PID_Control.Kd = 0.5;
}


void PID_control(void){
    /*
    current : encoder로부터 받는 값을 [m/s]올 calculate해서 대입
    TargetSpeed : regarding to zone, set the target speed
    output : PID filter를 이용하여 current speed에 더해질 값
    nextSpeed : current + output
    */
    
    // Calculate error
   IR_PID_Control.error = IR_PID_Control.TargetSpeed - IR_PID_Control.current;
    
    // Proportional term
    IR_PID_Control.Pout = IR_PID_Control.Kp * IR_PID_Control.error;
    
    // Integral term
    IR_PID_Control.integral += IR_PID_Control.error * IR_PID_Control.SamplingTime;
    IR_PID_Control.Iout = IR_PID_Control.Ki * IR_PID_Control.integral;
    
    // Derivative term
    IR_PID_Control.derivative = (IR_PID_Control.error - IR_PID_Control.pre_error) / IR_PID_Control.SamplingTime;
    IR_PID_Control.Dout = IR_PID_Control.Kd * IR_PID_Control.derivative;
    
    // Calculate total output
    IR_PID_Control.output = IR_PID_Control.Pout + IR_PID_Control.Iout + IR_PID_Control.Dout;
    
    // Save error to previous error
    IR_PID_Control.pre_error = IR_PID_Control.error;
    
    // Restrict to max/min
    if (IR_PID_Control.output > IR_PID_Control.max)
        IR_PID_Control.output = IR_PID_Control.max;
    else if (IR_PID_Control.output < IR_PID_Control.min)
        IR_PID_Control.output = IR_PID_Control.min;

    IR_PID_Control.nextSpeed = IR_PID_Control.current + IR_PID_Control.output;
    
}

void get_Speed(float32 speed){
    IR_PID_Control.current = speed;
    printf("%f \n", IR_PID_Control.current);
}

void set_Speed(float32 target){
    IR_PID_Control.TargetSpeed = target;
}

void set_propotion(float32 P, float32 I, float32 D){
    IR_PID_Control.Kp = P;
    IR_PID_Control.Ki = I;
    IR_PID_Control.Kd = D;
}
void set_SamplingTime(float32 time){
    IR_PID_Control.SamplingTime= time;
}

void set_Min_Max_Output(float32 min, float32 max){
    IR_PID_Control.min = min;
    IR_PID_Control.max = max;
}

float32 next_Vol(){
    IR_PID_Control.nextVol = (IR_PID_Control.nextSpeed-376.612)/409.9;
    return IR_PID_Control.nextVol;
}

boolean initial_speed(){
    if(IR_PID_Control.current > 50)
        return TRUE;
    else
        return FALSE;
}









