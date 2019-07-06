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
#define IGNOREIDX 4

#define LEFTLINESCAN 0  //linescanner index
#define RIGHTLINESCAN 1 //linescanner index

#define CENTER_INDEX 40
#define BOUNDARY 10
#define CENTER_INDEX_RIGHT 80

#define STAY 0
#define TURN_LEFT 1
#define TURN_RIGHT 2
#define RETURN_SCHOOLZONE_FLAG IR_LineData.School_Zone_flag;
#define THRESHOLD 1300
#define THRESHOLD_RIGHT 500

#define LEFT_LANE 1
#define RIGHT_LANE 2

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
    int Result[SignalLen + TransferLen -1];
    int Transfer[3];
    
    uint32 sample[MEDIAN_SIZE];
    float32 temp;
    
    uint32 previous;
    uint32 present;
    uint32 previous_RIGHT;
    uint32 present_RIGHT;
    
    boolean Direction_Determined;
    boolean Direction_Determined_RIGHT;
    boolean School_Zone_flag;

    uint32 Dash_Left;
    uint32 Dash_Right;
    uint32 Next_Lane;
    //for debugging
    uint32 SchoolZone_Status;
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

IFX_EXTERN void Line_avgerage(void);
IFX_EXTERN void Line_Buffer(void);
IFX_EXTERN void median_filter(void);

IFX_EXTERN void Line_avgerage_RIGHT(void);
IFX_EXTERN void Line_Buffer_RIGHT(void);
IFX_EXTERN void median_filter_RIGHT(void);

IFX_EXTERN void convolutionOP(void);
IFX_EXTERN void getLineData (void);

IFX_EXTERN void threshold_LINE(void);
IFX_EXTERN void threshold_LINE_RIGHT(void);

IFX_EXTERN boolean is_THRESHOLD(void);
IFX_EXTERN boolean is_THRESHOLD_MIDDLE(void);   //maybe useless
IFX_EXTERN boolean is_THRESHOLD_RIGHT(void);

//for school zone
IFX_EXTERN uint32 get_Dash(void);
IFX_EXTERN void clear_Dash(void);


IFX_EXTERN void clearBuffer(void);

IFX_EXTERN void convolutionOP_RIGHT(void);
IFX_EXTERN void getLineData_RIGHT (void);
IFX_EXTERN void clearBuffer_RIGHT(void);


IFX_EXTERN boolean IsOutSchoolZone(void);
IFX_EXTERN boolean IsInSchoolZone(void);

IFX_EXTERN boolean IsOutSchoolZone_THRESHOLD(void);
IFX_EXTERN boolean IsInSchoolZone_THRESHOLD(void);


IFX_EXTERN boolean Boundary(void);
IFX_EXTERN boolean isEndOfLEFT(void);

IFX_EXTERN boolean Boundary_RIGHT(void);

IFX_EXTERN boolean Over_Boundary(void);
IFX_EXTERN boolean Over_Boundary_RIGHT(void);


IFX_EXTERN float32 Direction(void);
IFX_EXTERN float32 Direction_CENTER(void);
IFX_EXTERN float32 Direction_CENTER_RIGHT(void);



#endif
