; ..............................................................................
;    File   fir_1024_38.2_48.3_2dB_40dB_95ord.s
; ..............................................................................

    .equ FIR_NumTaps, 95

; ..............................................................................
; Allocate and initialize filter taps in x RAM space
    .section .xdata, data, xmemory
    .align 256

FIR_Taps:
.hword  0xFFEE, 0xFFB9, 0xFF86, 0xFF5A, 0xFF38, 0xFF23, 0xFF1C, 0xFF26, 0xFF40
.hword  0xFF69, 0xFF9F, 0xFFDF, 0x0025, 0x006D, 0x00B1, 0x00ED, 0x011C, 0x0139
.hword  0x0142, 0x0134, 0x010E, 0x00D2, 0x0082, 0x0022, 0xFFB8, 0xFF48, 0xFEDC
.hword  0xFE7A, 0xFE2B, 0xFDF5, 0xFDE0, 0xFDF2, 0xFE2C, 0xFE93, 0xFF24, 0xFFDF
.hword  0x00BD, 0x01BB, 0x02CE, 0x03ED, 0x050F, 0x0626, 0x072A, 0x080E, 0x08CB
.hword  0x0957, 0x09AE, 0x09CB, 0x09AE, 0x0957, 0x08CB, 0x080E, 0x072A, 0x0626
.hword  0x050F, 0x03ED, 0x02CE, 0x01BB, 0x00BD, 0xFFDF, 0xFF24, 0xFE93, 0xFE2C
.hword  0xFDF2, 0xFDE0, 0xFDF5, 0xFE2B, 0xFE7A, 0xFEDC, 0xFF48, 0xFFB8, 0x0022
.hword  0x0082, 0x00D2, 0x010E, 0x0134, 0x0142, 0x0139, 0x011C, 0x00ED, 0x00B1
.hword  0x006D, 0x0025, 0xFFDF, 0xFF9F, 0xFF69, 0xFF40, 0xFF26, 0xFF1C, 0xFF23
.hword  0xFF38, 0xFF5A, 0xFF86, 0xFFB9, 0xFFEE

; ..............................................................................
; Allocate delay line in (uninitialized) Y data space
    .section .ybss, bss, ymemory
    ;.section .data
    ;.section ymemory
    ;.section .ydata, data, ymemory
    ;.section .yconst
    .align 256

FIR_1Delay:
    .space FIR_NumTaps*2

FIR_2Delay:
    .space FIR_NumTaps*2

FIR_3Delay:
    .space FIR_NumTaps*2

FIR_4Delay:
    .space FIR_NumTaps*2

FIR_5Delay:
    .space FIR_NumTaps*2

FIR_6Delay:
    .space FIR_NumTaps*2

FIR_7Delay:
    .space FIR_NumTaps*2

FIR_8Delay:
    .space FIR_NumTaps*2

FIR_9Delay:
    .space FIR_NumTaps*2

FIR_10Delay:
    .space FIR_NumTaps*2

FIR_11Delay:
    .space FIR_NumTaps*2

FIR_12Delay:
    .space FIR_NumTaps*2

FIR_13Delay:
    .space FIR_NumTaps*2

FIR_14Delay:
    .space FIR_NumTaps*2

FIR_15Delay:
    .space FIR_NumTaps*2

FIR_16Delay:
    .space FIR_NumTaps*2
    
;FIR_17Delay:
;    .space FIR_NumTaps*2
;
;FIR_18Delay:
;    .space FIR_NumTaps*2
;
;FIR_19Delay:
;    .space FIR_NumTaps*2
;
;FIR_20Delay:
;    .space FIR_NumTaps*2
;
;FIR_21Delay:
;    .space FIR_NumTaps*2
;
;FIR_22Delay:
;    .space FIR_NumTaps*2
;
;FIR_23Delay:
;    .space FIR_NumTaps*2
;
;FIR_24Delay:
;    .space FIR_NumTaps*2
;
;FIR_25Delay:
;    .space FIR_NumTaps*2
;
;FIR_26Delay:
;    .space FIR_NumTaps*2
;
;FIR_27Delay:
;    .space FIR_NumTaps*2
;
;FIR_28Delay:
;    .space FIR_NumTaps*2
;
;FIR_29Delay:
;    .space FIR_NumTaps*2
;
;FIR_30Delay:
;    .space FIR_NumTaps*2
;
;FIR_31Delay:
;    .space FIR_NumTaps*2
;
;FIR_32Delay:
;    .space FIR_NumTaps*2

; ..............................................................................
; Allocate and intialize filter structure

    .section .data
;    .section .xconst, code ;put this structure in ROM

.global _FIR_1Filter
_FIR_1Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_1Delay
.hword FIR_1Delay+FIR_NumTaps*2-1
.hword FIR_1Delay

.global _FIR_2Filter
_FIR_2Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_2Delay
.hword FIR_2Delay+FIR_NumTaps*2-1
.hword FIR_2Delay

.global _FIR_3Filter
_FIR_3Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_3Delay
.hword FIR_3Delay+FIR_NumTaps*2-1
.hword FIR_3Delay

.global _FIR_4Filter
_FIR_4Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_4Delay
.hword FIR_4Delay+FIR_NumTaps*2-1
.hword FIR_4Delay

.global _FIR_5Filter
_FIR_5Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_5Delay
.hword FIR_5Delay+FIR_NumTaps*2-1
.hword FIR_5Delay

.global _FIR_6Filter
_FIR_6Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_6Delay
.hword FIR_6Delay+FIR_NumTaps*2-1
.hword FIR_6Delay

.global _FIR_7Filter
_FIR_7Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_7Delay
.hword FIR_7Delay+FIR_NumTaps*2-1
.hword FIR_7Delay

.global _FIR_8Filter
_FIR_8Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_8Delay
.hword FIR_8Delay+FIR_NumTaps*2-1
.hword FIR_8Delay

.global _FIR_9Filter
_FIR_9Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_9Delay
.hword FIR_9Delay+FIR_NumTaps*2-1
.hword FIR_9Delay

.global _FIR_10Filter
_FIR_10Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_10Delay
.hword FIR_10Delay+FIR_NumTaps*2-1
.hword FIR_10Delay

.global _FIR_11Filter
_FIR_11Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_11Delay
.hword FIR_11Delay+FIR_NumTaps*2-1
.hword FIR_11Delay

.global _FIR_12Filter
_FIR_12Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_12Delay
.hword FIR_12Delay+FIR_NumTaps*2-1
.hword FIR_12Delay

.global _FIR_13Filter
_FIR_13Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_13Delay
.hword FIR_13Delay+FIR_NumTaps*2-1
.hword FIR_13Delay

.global _FIR_14Filter
_FIR_14Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_14Delay
.hword FIR_14Delay+FIR_NumTaps*2-1
.hword FIR_14Delay

.global _FIR_15Filter
_FIR_15Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_15Delay
.hword FIR_15Delay+FIR_NumTaps*2-1
.hword FIR_15Delay

.global _FIR_16Filter
_FIR_16Filter:
.hword FIR_NumTaps
.hword FIR_Taps
.hword FIR_Taps+FIR_NumTaps*2-1
.hword 0xff00
.hword FIR_16Delay
.hword FIR_16Delay+FIR_NumTaps*2-1
.hword FIR_16Delay

;.global _FIR_17Filter
;_FIR_17Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_17Delay
;.hword FIR_17Delay+FIR_NumTaps*2-1
;.hword FIR_17Delay
;    
;.global _FIR_18Filter
;_FIR_18Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_18Delay
;.hword FIR_18Delay+FIR_NumTaps*2-1
;.hword FIR_18Delay
;    
;.global _FIR_19Filter
;_FIR_19Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_19Delay
;.hword FIR_19Delay+FIR_NumTaps*2-1
;.hword FIR_19Delay
;    
;.global _FIR_20Filter
;_FIR_20Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_20Delay
;.hword FIR_20Delay+FIR_NumTaps*2-1
;.hword FIR_20Delay
;    
;.global _FIR_21Filter
;_FIR_21Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_21Delay
;.hword FIR_21Delay+FIR_NumTaps*2-1
;.hword FIR_21Delay
;    
;.global _FIR_22Filter
;_FIR_22Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_22Delay
;.hword FIR_22Delay+FIR_NumTaps*2-1
;.hword FIR_22Delay
;    
;.global _FIR_23Filter
;_FIR_23Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_23Delay
;.hword FIR_23Delay+FIR_NumTaps*2-1
;.hword FIR_23Delay
;    
;.global _FIR_24Filter
;_FIR_24Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_24Delay
;.hword FIR_24Delay+FIR_NumTaps*2-1
;.hword FIR_24Delay
;    
;.global _FIR_25Filter
;_FIR_25Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_25Delay
;.hword FIR_25Delay+FIR_NumTaps*2-1
;.hword FIR_25Delay
;    
;.global _FIR_26Filter
;_FIR_26Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_26Delay
;.hword FIR_26Delay+FIR_NumTaps*2-1
;.hword FIR_26Delay    
;   
;.global _FIR_27Filter
;_FIR_27Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_27Delay
;.hword FIR_27Delay+FIR_NumTaps*2-1
;.hword FIR_27Delay
;    
;.global _FIR_28Filter
;_FIR_28Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_28Delay
;.hword FIR_28Delay+FIR_NumTaps*2-1
;.hword FIR_28Delay
;    
;.global _FIR_29Filter
;_FIR_29Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_29Delay
;.hword FIR_29Delay+FIR_NumTaps*2-1
;.hword FIR_29Delay
;    
;.global _FIR_30Filter
;_FIR_30Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_30Delay
;.hword FIR_30Delay+FIR_NumTaps*2-1
;.hword FIR_30Delay    
;
;.global _FIR_31Filter
;_FIR_31Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_31Delay
;.hword FIR_31Delay+FIR_NumTaps*2-1
;.hword FIR_31Delay
;    
;.global _FIR_32Filter
;_FIR_32Filter:
;.hword FIR_NumTaps
;.hword FIR_Taps
;.hword FIR_Taps+FIR_NumTaps*2-1
;.hword 0xff00
;.hword FIR_32Delay
;.hword FIR_32Delay+FIR_NumTaps*2-1
;.hword FIR_32Delay
;    

; ..............................................................................
; ..............................................................................
; Sample assembly language calling program
;  The following declarations can be cut and pasted as needed into a program
;       .extern _FIRFilterInit
;       .extern _BlockFIRFilter
;       .extern _FIR_Filter
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
;       mov #_FIR_Filter, W0    ; Initalize W0 to filter structure
;       call    _FIRFilterInit  ; call this function once
;
; The next 4 instructions are required prior to each subroutine call
; to _BlockFIRFilter
;       mov #_FIR_Filter, W0    ; Initalize W0 to filter structure
;       mov #input, W1  ; Initalize W1 to input buffer 
;       mov #output, W2 ; Initalize W2 to output buffer
;       mov #20, W3 ; Initialize W3 with number of required output samples
;       call    _BlockFIRFilter ; call as many times as needed
