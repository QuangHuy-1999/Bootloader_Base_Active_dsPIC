; ..............................................................................
;    File   iir_test.s
; ..............................................................................

    .equ iir_PostNumSections, 5

; ..............................................................................
;
; Allocate and initialize filter coefficients
;
; These coefficients have been designed for use in the Transpose filter only

    .section .xdata, data, xmemory

iir_postCoefs:
.hword  0x0067  ; b( 1,0)/2
.hword  0x00CF  ; b( 1,1)/2
.hword  0x6BD5  ; a( 1,1)/2
.hword  0x0067  ; b( 1,2)/2
.hword  0xD28C  ; a( 1,2)/2
.hword  0x0069  ; b( 2,0)/2
.hword  0x00D2  ; b( 2,1)/2
.hword  0x6D62  ; a( 2,1)/2
.hword  0x0069  ; b( 2,2)/2
.hword  0xD0F9  ; a( 2,2)/2
.hword  0x006C  ; b( 3,0)/2
.hword  0x00D8  ; b( 3,1)/2
.hword  0x7076  ; a( 3,1)/2
.hword  0x006C  ; b( 3,2)/2
.hword  0xCDD9  ; a( 3,2)/2
.hword  0x0070  ; b( 4,0)/2
.hword  0x00E1  ; b( 4,1)/2
.hword  0x74FE  ; a( 4,1)/2
.hword  0x0070  ; b( 4,2)/2
.hword  0xC940  ; a( 4,2)/2
.hword  0x0076  ; b( 5,0)/2
.hword  0x00EC  ; b( 5,1)/2
.hword  0x7ACE  ; a( 5,1)/2
.hword  0x0076  ; b( 5,2)/2
.hword  0xC359  ; a( 5,2)/2

; ..............................................................................
; Allocate states buffers in (uninitialized) Y data space
    .section .ybss, bss, ymemory

iir_post1States1:
    .space iir_PostNumSections*2
iir_post1States2:
    .space iir_PostNumSections*2

iir_post2States1:
    .space iir_PostNumSections*2
iir_post2States2:
    .space iir_PostNumSections*2

iir_post3States1:
    .space iir_PostNumSections*2
iir_post3States2:
    .space iir_PostNumSections*2

iir_post4States1:
    .space iir_PostNumSections*2
iir_post4States2:
    .space iir_PostNumSections*2

iir_post5States1:
    .space iir_PostNumSections*2
iir_post5States2:
    .space iir_PostNumSections*2

iir_post6States1:
    .space iir_PostNumSections*2
iir_post6States2:
    .space iir_PostNumSections*2

iir_post7States1:
    .space iir_PostNumSections*2
iir_post7States2:
    .space iir_PostNumSections*2

iir_post8States1:
    .space iir_PostNumSections*2
iir_post8States2:
    .space iir_PostNumSections*2

iir_post9States1:
    .space iir_PostNumSections*2
iir_post9States2:
    .space iir_PostNumSections*2

iir_post10States1:
    .space iir_PostNumSections*2
iir_post10States2:
    .space iir_PostNumSections*2

iir_post11States1:
    .space iir_PostNumSections*2
iir_post11States2:
    .space iir_PostNumSections*2

iir_post12States1:
    .space iir_PostNumSections*2
iir_post12States2:
    .space iir_PostNumSections*2

iir_post13States1:
    .space iir_PostNumSections*2
iir_post13States2:
    .space iir_PostNumSections*2

iir_post14States1:
    .space iir_PostNumSections*2
iir_post14States2:
    .space iir_PostNumSections*2

iir_post15States1:
    .space iir_PostNumSections*2
iir_post15States2:
    .space iir_PostNumSections*2

iir_post16States1:
    .space iir_PostNumSections*2
iir_post16States2:
    .space iir_PostNumSections*2
    
    
iir_post17States1:
    .space iir_PostNumSections*2
iir_post17States2:
    .space iir_PostNumSections*2

iir_post18States1:
    .space iir_PostNumSections*2
iir_post18States2:
    .space iir_PostNumSections*2

iir_post19States1:
    .space iir_PostNumSections*2
iir_post19States2:
    .space iir_PostNumSections*2

iir_post20States1:
    .space iir_PostNumSections*2
iir_post20States2:
    .space iir_PostNumSections*2

iir_post21States1:
    .space iir_PostNumSections*2
iir_post21States2:
    .space iir_PostNumSections*2

iir_post22States1:
    .space iir_PostNumSections*2
iir_post22States2:
    .space iir_PostNumSections*2

iir_post23States1:
    .space iir_PostNumSections*2
iir_post23States2:
    .space iir_PostNumSections*2

iir_post24States1:
    .space iir_PostNumSections*2
iir_post24States2:
    .space iir_PostNumSections*2

iir_post25States1:
    .space iir_PostNumSections*2
iir_post25States2:
    .space iir_PostNumSections*2

iir_post26States1:
    .space iir_PostNumSections*2
iir_post26States2:
    .space iir_PostNumSections*2

iir_post27States1:
    .space iir_PostNumSections*2
iir_post27States2:
    .space iir_PostNumSections*2

iir_post28States1:
    .space iir_PostNumSections*2
iir_post28States2:
    .space iir_PostNumSections*2

iir_post29States1:
    .space iir_PostNumSections*2
iir_post29States2:
    .space iir_PostNumSections*2

iir_post30States1:
    .space iir_PostNumSections*2
iir_post30States2:
    .space iir_PostNumSections*2

iir_post31States1:
    .space iir_PostNumSections*2
iir_post31States2:
    .space iir_PostNumSections*2

iir_post32States1:
    .space iir_PostNumSections*2
iir_post32States2:
    .space iir_PostNumSections*2    

; ..............................................................................
; Allocate and intialize filter structure

    .section .data

.global _IIR_post1Filter
_IIR_post1Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post1States1
.hword iir_post1States2
.hword 0x0000

.global _IIR_post2Filter
_IIR_post2Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post2States1
.hword iir_post2States2
.hword 0x0000

.global _IIR_post3Filter
_IIR_post3Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post3States1
.hword iir_post3States2
.hword 0x0000

.global _IIR_post4Filter
_IIR_post4Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post4States1
.hword iir_post4States2
.hword 0x0000

.global _IIR_post5Filter
_IIR_post5Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post5States1
.hword iir_post5States2
.hword 0x0000

.global _IIR_post6Filter
_IIR_post6Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post6States1
.hword iir_post6States2
.hword 0x0000

.global _IIR_post7Filter
_IIR_post7Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post7States1
.hword iir_post7States2
.hword 0x0000

.global _IIR_post8Filter
_IIR_post8Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post8States1
.hword iir_post8States2
.hword 0x0000

.global _IIR_post9Filter
_IIR_post9Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post9States1
.hword iir_post9States2
.hword 0x0000

.global _IIR_post10Filter
_IIR_post10Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post10States1
.hword iir_post10States2
.hword 0x0000

.global _IIR_post11Filter
_IIR_post11Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post11States1
.hword iir_post11States2
.hword 0x0000

.global _IIR_post12Filter
_IIR_post12Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post12States1
.hword iir_post12States2
.hword 0x0000

.global _IIR_post13Filter
_IIR_post13Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post13States1
.hword iir_post13States2
.hword 0x0000

.global _IIR_post14Filter
_IIR_post14Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post14States1
.hword iir_post14States2
.hword 0x0000

.global _IIR_post15Filter
_IIR_post15Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post15States1
.hword iir_post15States2
.hword 0x0000

.global _IIR_post16Filter
_IIR_post16Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post16States1
.hword iir_post16States2
.hword 0x0000

.global _IIR_post17Filter
_IIR_post17Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post17States1
.hword iir_post17States2
.hword 0x0000
    
.global _IIR_post18Filter
_IIR_post18Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post18States1
.hword iir_post18States2
.hword 0x0000
    
.global _IIR_post19Filter
_IIR_post19Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post19States1
.hword iir_post19States2
.hword 0x0000
    
.global _IIR_post20Filter
_IIR_post20Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post20States1
.hword iir_post20States2
.hword 0x0000
    
.global _IIR_post21Filter
_IIR_post21Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post21States1
.hword iir_post21States2
.hword 0x0000    
    
.global _IIR_post22Filter
_IIR_post22Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post22States1
.hword iir_post22States2
.hword 0x0000   
    
.global _IIR_post23Filter
_IIR_post23Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post23States1
.hword iir_post23States2
.hword 0x0000   
    
.global _IIR_post24Filter
_IIR_post24Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post24States1
.hword iir_post24States2
.hword 0x0000   
    
.global _IIR_post25Filter
_IIR_post25Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post25States1
.hword iir_post25States2
.hword 0x0000   
    
.global _IIR_post26Filter
_IIR_post26Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post26States1
.hword iir_post26States2
.hword 0x0000   
    
.global _IIR_post27Filter
_IIR_post27Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post27States1
.hword iir_post27States2
.hword 0x0000   
    
.global _IIR_post28Filter
_IIR_post28Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post28States1
.hword iir_post28States2
.hword 0x0000       

.global _IIR_post29Filter
_IIR_post29Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post29States1
.hword iir_post29States2
.hword 0x0000       
    
.global _IIR_post30Filter
_IIR_post30Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post30States1
.hword iir_post30States2
.hword 0x0000    
    
.global _IIR_post31Filter
_IIR_post31Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post31States1
.hword iir_post31States2
.hword 0x0000    
    
.global _IIR_post32Filter
_IIR_post32Filter:
.hword iir_PostNumSections-1
.hword iir_postCoefs
.hword 0xFF00
.hword iir_post32States1
.hword iir_post32States2
.hword 0x0000        
; ..............................................................................
; Sample assembly language calling program
;  The following declarations can be cut and pasted as needed into a program
;       .extern _IIRTransposeFilterInit
;       .extern _BlockIIRTransposeFilter
;       .extern _iir_testFilter
;
;       .section    .bss
;
;    The input and output buffers can be made any desired size
;      the value 40 is just an example - however, one must ensure
;      that the output buffer is at least as long as the number of samples
;      to be filtered (parameter 4)
;input:     .space  40
;output:    .space  40
;       .text
;
;
;  This code can be copied and pasted as needed into a program
;
;
; Set up pointers to access input samples, filter taps, delay line and
; output samples.
;       mov #_iir_testFilter, W0    ; Initalize W0 to filter structure
;       call    _IIRTransposeFilterInit ; call this function once
;
; The next 4 instructions are required prior to each subroutine call
; to _BlockIIRTransposeFilter
;       mov #_iir_testFilter, W0    ; Initalize W0 to filter structure
;       mov #input, W1  ; Initalize W1 to input buffer 
;       mov #output, W2 ; Initalize W2 to output buffer
;       mov #20, W3 ; Initialize W3 with number of required output samples
;       call    _BlockIIRTransposeFilter    ; call as many times as needed


; ..............................................................................
; Sample assembly language calling program
;  The following declarations can be cut and pasted as needed into a program
;       .extern _IIRCanonicFilterInit
;       .extern _BlockIIRCanonicFilter
;       .extern _iir_newFilter
;
;       .section    .bss
;
;    The input and output buffers can be made any desired size
;      the value 40 is just an example - however, one must ensure
;      that the output buffer is at least as long as the number of samples
;      to be filtered (parameter 4)
;input:     .space  40
;output:    .space  40
;       .text
;
;
;  This code can be copied and pasted as needed into a program
;
;
; Set up pointers to access input samples, filter taps, delay line and
; output samples.
;       mov #_iir_newFilter, W0 ; Initalize W0 to filter structure
;       call    _IIRCanonicFilterInit   ; call this function once
;
; The next 4 instructions are required prior to each subroutine call
; to _BlockIIRCanonicFilter
;       mov #_iir_newFilter, W0 ; Initalize W0 to filter structure
;       mov #input, W1  ; Initalize W1 to input buffer 
;       mov #output, W2 ; Initalize W2 to output buffer
;       mov #20, W3 ; Initialize W3 with number of required output samples
;       call _BlockIIRCanonicFilter ; call as many times as needed
