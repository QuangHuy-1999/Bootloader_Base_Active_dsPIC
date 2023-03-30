
/** Include file for routines in FIR_Filter.s **/
#ifndef FIRFILT_H
#define FIRFILT_H


/***************************************************************/
/***************************************************************/
/*****                STRUCTURE DEFINITIONS                *****/
/***************************************************************/
/***************************************************************/
typedef struct
{
  int  numTaps;
  int *pTapsBase;
  int *pTapsEnd;
  int  tapsPage;
  int *pDelayBase;
  int *pDelayEnd;
  int *pDelayPtr;
} FIRFilterStructure;


/***************************************************************/
/***************************************************************/
/*****                  EXTERNAL VARIABLES                 *****/
/***************************************************************/
/***************************************************************/
extern FIRFilterStructure* FIRFilts[32];


/***************************************************************/
/***************************************************************/
/*****                  EXTERNAL FUNCTIONS                 *****/
/***************************************************************/
/***************************************************************/
extern void BlockFIRFilter(FIRFilterStructure *FIRfilter, int *samples_in,
                           int *filter_out, int number);
extern void FIRFilterInit(FIRFilterStructure *FIRfilter);

#endif /* FIRFILT_H*/
