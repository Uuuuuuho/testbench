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
#define LEFTLINESCAN 0  //linescanner index
#define RIGHTLINESCAN 1 //linescanner index

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

typedef struct{
    uint32 Result[SignalLen + TransferLen -1];
    uint32 Transfer[3];
    
    uint32 sample[MEDIAN_SIZE];
    float32 temp;
    
    
    uint16 LineAmount;
    uint16 head;
    uint16 tail;
}LineData;

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/
IFX_EXTERN InfineonRacer_t IR_Ctrl;
IFX_EXTERN LineData IR_LineData;





/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
IFX_EXTERN void InfineonRacer_init(void);
IFX_EXTERN void InfineonRacer_detectLane();
IFX_EXTERN void InfineonRacer_control(void);

IFX_EXTERN void median_filter(void);
IFX_EXTERN void convolutionOP(void);
IFX_EXTERN void getLineData (void);


#endif
