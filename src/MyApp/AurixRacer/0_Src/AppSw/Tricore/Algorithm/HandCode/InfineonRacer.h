#ifndef INFINEONRACER_H_
#define INFINEONRACER_H_


/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include <Ifx_Types.h>
#include "Configuration.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/
#define IR_getLs0Margin()		IR_Ctrl.Ls0Margin
#define IR_getLs1Margin()		IR_Ctrl.Ls1Margin
#define LINEMAX 128
#define TransferLen 3
#define SignalLen LINEMAX
#define MEDIAN_SIZE 5
#define IGNOREIDX 5


/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/




/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/
typedef struct{
	sint32 Ls0Margin;
	sint32 Ls1Margin;
	boolean basicTest;
}InfineonRacer_t;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN InfineonRacer_t IR_Ctrl;
uint32 Result[SignalLen + TransferLen -1] = {0};
uint32 Transfer[3] = {-1, 0, 1};

uint16 Ratio = 68;
uint32 sample[MEDIAN_SIZE] = {0};
float32 temp = 0;


IFX_EXTERN uint16 LineAmount = 0;
IFX_EXTERN uint16 head = 0;
IFX_EXTERN uint16 tail = 0;




/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_EXTERN void InfineonRacer_init(void);
IFX_EXTERN void InfineonRacer_detectLane(void);
IFX_EXTERN void InfineonRacer_control(void);

void median_filter();
void convolutionOP();
void getLineData ();


#endif
