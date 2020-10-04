;******************************************************************************
;* TI ARM G3 C/C++ Codegen                                            PC v18.12.4.LTS *
;* Date/Time created: Sat Sep 19 20:39:24 2020                                *
;******************************************************************************
	.compiler_opts --abi=eabi --arm_vmrs_si_workaround=off --code_state=16 --diag_wrap=off --embedded_constants=on --endian=little --float_support=FPv4SPD16 --hll_source=on --object_format=elf --silicon_version=7M4 --symdebug:dwarf --symdebug:dwarf_version=3 --unaligned_access=on 
	.thumb

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../lib/launchpad.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TI ARM G3 C/C++ Codegen PC v18.12.4.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\zachr\workspace_v9\mm\Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("_ftable")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_ftable")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$170)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/stdio.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$1, DW_AT_decl_column(0x1a)


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("setvbuf")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("setvbuf")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/stdio.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$2, DW_AT_decl_column(0x1d)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$69)

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$72)

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$73)

	.dwendtag $C$DW$2

;	C:\ti\ccs930\ccs\tools\compiler\ti-cgt-arm_18.12.4.LTS\bin\armacpia.exe -@C:\\Users\\zachr\\AppData\\Local\\Temp\\{878C3537-347E-4247-9E95-44051B68F7EF} 
	.sect	".text:launchpad_init"
	.clink
	.thumbfunc launchpad_init
	.thumb
	.global	launchpad_init

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("launchpad_init")
	.dwattr $C$DW$7, DW_AT_low_pc(launchpad_init)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("launchpad_init")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_TI_begin_file("../lib/launchpad.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x09)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$7, DW_AT_decl_file("../lib/launchpad.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x09)
	.dwattr $C$DW$7, DW_AT_decl_column(0x06)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../lib/launchpad.c",line 9,column 27,is_stmt,address launchpad_init,isa 1

	.dwfde $C$DW$CIE, launchpad_init
;----------------------------------------------------------------------
;   9 | void launchpad_init(void) {                                            
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: launchpad_init                                             *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V1,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,    *
;*                           D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,   *
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Regs Used         : A1,A2,A3,A4,V1,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,    *
;*                           D2_hi,D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,   *
;*                           D7_hi,FPEXC,FPSCR                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                   *
;*****************************************************************************
launchpad_init:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {V1, LR}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 4, -8
	.dwpsn	file "../lib/launchpad.c",line 10,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  10 | ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);                       
;----------------------------------------------------------------------
        LDR       A1, $C$CON1           ; [DPU_V7M3_PIPE] |10| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |10| 
        LDR       A1, [A1, #24]         ; [DPU_V7M3_PIPE] |10| 
        MOV       A2, A1                ; [DPU_V7M3_PIPE] |10| 
        LDR       A1, $C$CON2           ; [DPU_V7M3_PIPE] |10| 
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_call
	.dwattr $C$DW$8, DW_AT_TI_indirect

        BLX       A2                    ; [DPU_V7M3_PIPE] |10| 
        ; CALL OCCURS {}                 ; [] |10| 
	.dwpsn	file "../lib/launchpad.c",line 11,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  11 | ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);                       
;----------------------------------------------------------------------
        LDR       A1, $C$CON1           ; [DPU_V7M3_PIPE] |11| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |11| 
        LDR       A1, [A1, #24]         ; [DPU_V7M3_PIPE] |11| 
        MOV       A2, A1                ; [DPU_V7M3_PIPE] |11| 
        LDR       A1, $C$CON3           ; [DPU_V7M3_PIPE] |11| 
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_call
	.dwattr $C$DW$9, DW_AT_TI_indirect

        BLX       A2                    ; [DPU_V7M3_PIPE] |11| 
        ; CALL OCCURS {}                 ; [] |11| 
	.dwpsn	file "../lib/launchpad.c",line 12,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  12 | ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_UART0);                       
;  13 | // Port F                                                              
;----------------------------------------------------------------------
        LDR       A1, $C$CON1           ; [DPU_V7M3_PIPE] |12| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |12| 
        LDR       A1, [A1, #24]         ; [DPU_V7M3_PIPE] |12| 
        MOV       A2, A1                ; [DPU_V7M3_PIPE] |12| 
        LDR       A1, $C$CON4           ; [DPU_V7M3_PIPE] |12| 
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_call
	.dwattr $C$DW$10, DW_AT_TI_indirect

        BLX       A2                    ; [DPU_V7M3_PIPE] |12| 
        ; CALL OCCURS {}                 ; [] |12| 
	.dwpsn	file "../lib/launchpad.c",line 14,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  14 | ROM_GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, 0xE);                       
;----------------------------------------------------------------------
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |14| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |14| 
        LDR       A1, [A1, #60]         ; [DPU_V7M3_PIPE] |14| 
        MOV       A3, A1                ; [DPU_V7M3_PIPE] |14| 
        LDR       A1, $C$CON6           ; [DPU_V7M3_PIPE] |14| 
        MOVS      A2, #14               ; [DPU_V7M3_PIPE] |14| 
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_call
	.dwattr $C$DW$11, DW_AT_TI_indirect

        BLX       A3                    ; [DPU_V7M3_PIPE] |14| 
        ; CALL OCCURS {}                 ; [] |14| 
	.dwpsn	file "../lib/launchpad.c",line 15,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  15 | ROM_GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, 0x11);                       
;----------------------------------------------------------------------
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |15| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |15| 
        LDR       A1, [A1, #56]         ; [DPU_V7M3_PIPE] |15| 
        MOV       A3, A1                ; [DPU_V7M3_PIPE] |15| 
        LDR       A1, $C$CON6           ; [DPU_V7M3_PIPE] |15| 
        MOVS      A2, #17               ; [DPU_V7M3_PIPE] |15| 
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_call
	.dwattr $C$DW$12, DW_AT_TI_indirect

        BLX       A3                    ; [DPU_V7M3_PIPE] |15| 
        ; CALL OCCURS {}                 ; [] |15| 
	.dwpsn	file "../lib/launchpad.c",line 16,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  16 | ROM_GPIOPadConfigSet(GPIO_PORTF_BASE, 0x11, GPIO_STRENGTH_2MA,         
;  17 |                      GPIO_PIN_TYPE_STD_WPU);                           
;  18 | // UART                                                                
;----------------------------------------------------------------------
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |16| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |16| 
        LDR       A1, [A1, #20]         ; [DPU_V7M3_PIPE] |16| 
        MOV       V1, A1                ; [DPU_V7M3_PIPE] |16| 
        LDR       A1, $C$CON6           ; [DPU_V7M3_PIPE] |16| 
        MOVS      A2, #17               ; [DPU_V7M3_PIPE] |16| 
        MOVS      A3, #1                ; [DPU_V7M3_PIPE] |16| 
        MOVS      A4, #10               ; [DPU_V7M3_PIPE] |16| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_call
	.dwattr $C$DW$13, DW_AT_TI_indirect

        BLX       V1                    ; [DPU_V7M3_PIPE] |16| 
        ; CALL OCCURS {}                 ; [] |16| 
	.dwpsn	file "../lib/launchpad.c",line 19,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  19 | ROM_GPIOPinConfigure(GPIO_PA0_U0RX);                                   
;----------------------------------------------------------------------
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |19| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |19| 
        LDR       A1, [A1, #104]        ; [DPU_V7M3_PIPE] |19| 
        MOV       A2, A1                ; [DPU_V7M3_PIPE] |19| 
        MOVS      A1, #1                ; [DPU_V7M3_PIPE] |19| 
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_call
	.dwattr $C$DW$14, DW_AT_TI_indirect

        BLX       A2                    ; [DPU_V7M3_PIPE] |19| 
        ; CALL OCCURS {}                 ; [] |19| 
	.dwpsn	file "../lib/launchpad.c",line 20,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  20 | ROM_GPIOPinConfigure(GPIO_PA1_U0TX);                                   
;----------------------------------------------------------------------
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |20| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |20| 
        LDR       A1, [A1, #104]        ; [DPU_V7M3_PIPE] |20| 
        MOV       A2, A1                ; [DPU_V7M3_PIPE] |20| 
        MOV       A1, #1025             ; [DPU_V7M3_PIPE] |20| 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_call
	.dwattr $C$DW$15, DW_AT_TI_indirect

        BLX       A2                    ; [DPU_V7M3_PIPE] |20| 
        ; CALL OCCURS {}                 ; [] |20| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../lib/launchpad.c",line 21,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  21 | ROM_GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_1 | GPIO_PIN_0);         
;----------------------------------------------------------------------
        LDR       A1, $C$CON5           ; [DPU_V7M3_PIPE] |21| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |21| 
        LDR       A1, [A1, #84]         ; [DPU_V7M3_PIPE] |21| 
        MOVS      A2, #3                ; [DPU_V7M3_PIPE] |21| 
        MOV       A3, A1                ; [DPU_V7M3_PIPE] |21| 
        MOV       A1, #1073758208       ; [DPU_V7M3_PIPE] |21| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_call
	.dwattr $C$DW$16, DW_AT_TI_indirect

        BLX       A3                    ; [DPU_V7M3_PIPE] |21| 
        ; CALL OCCURS {}                 ; [] |21| 
	.dwpsn	file "../lib/launchpad.c",line 22,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  22 | ROM_UARTConfigSetExpClk(UART0_BASE, ROM_SysCtlClockGet(), 115200,      
;  23 |                         UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE |    
;  24 |                             UART_CONFIG_PAR_NONE);                     
;----------------------------------------------------------------------
        LDR       A1, $C$CON1           ; [DPU_V7M3_PIPE] |22| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |22| 
        LDR       A1, [A1, #96]         ; [DPU_V7M3_PIPE] |22| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_call
	.dwattr $C$DW$17, DW_AT_TI_indirect

        BLX       A1                    ; [DPU_V7M3_PIPE] |22| 
        ; CALL OCCURS {}                 ; [] |22| 
        MOV       A2, A1                ; [DPU_V7M3_PIPE] |22| 
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |22| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |22| 
        LDR       A1, [A1, #20]         ; [DPU_V7M3_PIPE] |22| 
        MOV       V1, A1                ; [DPU_V7M3_PIPE] |22| 
        LDR       A1, $C$CON8           ; [DPU_V7M3_PIPE] |22| 
        MOV       A3, #115200           ; [DPU_V7M3_PIPE] |22| 
        MOVS      A4, #96               ; [DPU_V7M3_PIPE] |22| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_call
	.dwattr $C$DW$18, DW_AT_TI_indirect

        BLX       V1                    ; [DPU_V7M3_PIPE] |22| 
        ; CALL OCCURS {}                 ; [] |22| 
	.dwpsn	file "../lib/launchpad.c",line 25,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  25 | ROM_UARTFIFOLevelSet(UART0_BASE, UART_FIFO_TX1_8, UART_FIFO_RX1_8);    
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |25| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |25| 
        LDR       A1, [A1, #12]         ; [DPU_V7M3_PIPE] |25| 
        MOV       A4, A1                ; [DPU_V7M3_PIPE] |25| 
        LDR       A1, $C$CON8           ; [DPU_V7M3_PIPE] |25| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |25| 
        MOVS      A3, #0                ; [DPU_V7M3_PIPE] |25| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_call
	.dwattr $C$DW$19, DW_AT_TI_indirect

        BLX       A4                    ; [DPU_V7M3_PIPE] |25| 
        ; CALL OCCURS {}                 ; [] |25| 
	.dwpsn	file "../lib/launchpad.c",line 26,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  26 | ROM_UARTFIFOEnable(UART0_BASE);                                        
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |26| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |26| 
        LDR       A1, [A1, #96]         ; [DPU_V7M3_PIPE] |26| 
        MOV       A2, A1                ; [DPU_V7M3_PIPE] |26| 
        LDR       A1, $C$CON8           ; [DPU_V7M3_PIPE] |26| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_call
	.dwattr $C$DW$20, DW_AT_TI_indirect

        BLX       A2                    ; [DPU_V7M3_PIPE] |26| 
        ; CALL OCCURS {}                 ; [] |26| 
	.dwpsn	file "../lib/launchpad.c",line 27,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  27 | ROM_UARTEnable(UART0_BASE);                                            
;  28 | // Disable buffered output                                             
;----------------------------------------------------------------------
        LDR       A1, $C$CON7           ; [DPU_V7M3_PIPE] |27| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |27| 
        LDR       A1, [A1, #28]         ; [DPU_V7M3_PIPE] |27| 
        MOV       A2, A1                ; [DPU_V7M3_PIPE] |27| 
        LDR       A1, $C$CON8           ; [DPU_V7M3_PIPE] |27| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_call
	.dwattr $C$DW$21, DW_AT_TI_indirect

        BLX       A2                    ; [DPU_V7M3_PIPE] |27| 
        ; CALL OCCURS {}                 ; [] |27| 
	.dwpsn	file "../lib/launchpad.c",line 29,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  29 | setvbuf(stdout, NULL, _IONBF, 0);                                      
;----------------------------------------------------------------------
        LDR       A1, $C$CON9           ; [DPU_V7M3_PIPE] |29| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |29| 
        MOVS      A3, #4                ; [DPU_V7M3_PIPE] |29| 
        MOVS      A4, #0                ; [DPU_V7M3_PIPE] |29| 
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_name("setvbuf")
	.dwattr $C$DW$22, DW_AT_TI_call

        BL        setvbuf               ; [DPU_V7M3_PIPE] |29| 
        ; CALL OCCURS {setvbuf }         ; [] |29| 
	.dwpsn	file "../lib/launchpad.c",line 30,column 1,is_stmt,isa 1
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return

        POP       {V1, PC}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 4
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../lib/launchpad.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x1e)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text:left_switch"
	.clink
	.thumbfunc left_switch
	.thumb
	.global	left_switch

$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("left_switch")
	.dwattr $C$DW$24, DW_AT_low_pc(left_switch)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("left_switch")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$24, DW_AT_TI_begin_file("../lib/launchpad.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x20)
	.dwattr $C$DW$24, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$24, DW_AT_decl_file("../lib/launchpad.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x20)
	.dwattr $C$DW$24, DW_AT_decl_column(0x06)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../lib/launchpad.c",line 32,column 24,is_stmt,address left_switch,isa 1

	.dwfde $C$DW$CIE, left_switch
;----------------------------------------------------------------------
;  32 | bool left_switch(void) {                                               
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: left_switch                                                *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
left_switch:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../lib/launchpad.c",line 33,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  33 | return !ROM_GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_4);                  
;----------------------------------------------------------------------
        LDR       A1, $C$CON10          ; [DPU_V7M3_PIPE] |33| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |33| 
        LDR       A1, [A1, #44]         ; [DPU_V7M3_PIPE] |33| 
        MOV       A3, A1                ; [DPU_V7M3_PIPE] |33| 
        LDR       A1, $C$CON11          ; [DPU_V7M3_PIPE] |33| 
        MOVS      A2, #16               ; [DPU_V7M3_PIPE] |33| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_call
	.dwattr $C$DW$25, DW_AT_TI_indirect

        BLX       A3                    ; [DPU_V7M3_PIPE] |33| 
        ; CALL OCCURS {}                 ; [] |33| 
        MOVS      A4, #0                ; [DPU_V7M3_PIPE] |33| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |33| 
        MOVS      A3, #0                ; [DPU_V7M3_PIPE] |33| 
        CBZ       A1, ||$C$L1||         ; [] 
        ; BRANCHCC OCCURS {||$C$L1||}    ; [] |33| 
;* --------------------------------------------------------------------------*
        MOVS      A3, #1                ; [DPU_V7M3_PIPE] |33| 
;* --------------------------------------------------------------------------*
||$C$L1||:    
        CBNZ      A3, ||$C$L2||         ; [] 
        ; BRANCHCC OCCURS {||$C$L2||}    ; [] |33| 
;* --------------------------------------------------------------------------*
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |33| 
;* --------------------------------------------------------------------------*
||$C$L2||:    
        CBZ       A2, ||$C$L3||         ; [] 
        ; BRANCHCC OCCURS {||$C$L3||}    ; [] |33| 
;* --------------------------------------------------------------------------*
        MOVS      A4, #1                ; [DPU_V7M3_PIPE] |33| 
;* --------------------------------------------------------------------------*
||$C$L3||:    
        MOV       A1, A4                ; [DPU_V7M3_PIPE] |33| 
	.dwpsn	file "../lib/launchpad.c",line 34,column 1,is_stmt,isa 1
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return

        POP       {A4, PC}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$24, DW_AT_TI_end_file("../lib/launchpad.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x22)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text:right_switch"
	.clink
	.thumbfunc right_switch
	.thumb
	.global	right_switch

$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("right_switch")
	.dwattr $C$DW$27, DW_AT_low_pc(right_switch)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("right_switch")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$27, DW_AT_TI_begin_file("../lib/launchpad.c")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0x24)
	.dwattr $C$DW$27, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$27, DW_AT_decl_file("../lib/launchpad.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0x24)
	.dwattr $C$DW$27, DW_AT_decl_column(0x06)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../lib/launchpad.c",line 36,column 25,is_stmt,address right_switch,isa 1

	.dwfde $C$DW$CIE, right_switch
;----------------------------------------------------------------------
;  36 | bool right_switch(void) {                                              
;----------------------------------------------------------------------

;*****************************************************************************
;* FUNCTION NAME: right_switch                                               *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
right_switch:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
	.dwpsn	file "../lib/launchpad.c",line 37,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  37 | return !ROM_GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_0);                  
;----------------------------------------------------------------------
        LDR       A1, $C$CON12          ; [DPU_V7M3_PIPE] |37| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |37| 
        LDR       A1, [A1, #44]         ; [DPU_V7M3_PIPE] |37| 
        MOV       A3, A1                ; [DPU_V7M3_PIPE] |37| 
        LDR       A1, $C$CON13          ; [DPU_V7M3_PIPE] |37| 
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |37| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_call
	.dwattr $C$DW$28, DW_AT_TI_indirect

        BLX       A3                    ; [DPU_V7M3_PIPE] |37| 
        ; CALL OCCURS {}                 ; [] |37| 
        MOVS      A4, #0                ; [DPU_V7M3_PIPE] |37| 
        MOVS      A2, #0                ; [DPU_V7M3_PIPE] |37| 
        MOVS      A3, #0                ; [DPU_V7M3_PIPE] |37| 
        CBZ       A1, ||$C$L4||         ; [] 
        ; BRANCHCC OCCURS {||$C$L4||}    ; [] |37| 
;* --------------------------------------------------------------------------*
        MOVS      A3, #1                ; [DPU_V7M3_PIPE] |37| 
;* --------------------------------------------------------------------------*
||$C$L4||:    
        CBNZ      A3, ||$C$L5||         ; [] 
        ; BRANCHCC OCCURS {||$C$L5||}    ; [] |37| 
;* --------------------------------------------------------------------------*
        MOVS      A2, #1                ; [DPU_V7M3_PIPE] |37| 
;* --------------------------------------------------------------------------*
||$C$L5||:    
        CBZ       A2, ||$C$L6||         ; [] 
        ; BRANCHCC OCCURS {||$C$L6||}    ; [] |37| 
;* --------------------------------------------------------------------------*
        MOVS      A4, #1                ; [DPU_V7M3_PIPE] |37| 
;* --------------------------------------------------------------------------*
||$C$L6||:    
        MOV       A1, A4                ; [DPU_V7M3_PIPE] |37| 
	.dwpsn	file "../lib/launchpad.c",line 38,column 1,is_stmt,isa 1
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        POP       {A4, PC}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("../lib/launchpad.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x26)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text:led_toggle"
	.clink
	.thumbfunc led_toggle
	.thumb
	.global	led_toggle

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("led_toggle")
	.dwattr $C$DW$30, DW_AT_low_pc(led_toggle)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("led_toggle")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_TI_begin_file("../lib/launchpad.c")
	.dwattr $C$DW$30, DW_AT_TI_begin_line(0x28)
	.dwattr $C$DW$30, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$30, DW_AT_decl_file("../lib/launchpad.c")
	.dwattr $C$DW$30, DW_AT_decl_line(0x28)
	.dwattr $C$DW$30, DW_AT_decl_column(0x06)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../lib/launchpad.c",line 40,column 30,is_stmt,address led_toggle,isa 1

	.dwfde $C$DW$CIE, led_toggle
$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("led")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("led")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg0]


;*****************************************************************************
;* FUNCTION NAME: led_toggle                                                 *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
led_toggle:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("led")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("led")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_breg13 0]

;----------------------------------------------------------------------
;  40 | void led_toggle(uint8_t led) {                                         
;----------------------------------------------------------------------
        STRB      A1, [SP, #0]          ; [DPU_V7M3_PIPE] |40| 
	.dwpsn	file "../lib/launchpad.c",line 41,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  41 | ROM_GPIOPinWrite(GPIO_PORTF_BASE, led,                                 
;  42 |                  ~ROM_GPIOPinRead(GPIO_PORTF_BASE, led));              
;----------------------------------------------------------------------
        LDR       A1, $C$CON14          ; [DPU_V7M3_PIPE] |41| 
        LDR       A1, [A1, #0]          ; [DPU_V7M3_PIPE] |41| 
        LDRB      A2, [SP, #0]          ; [DPU_V7M3_PIPE] |41| 
        LDR       A1, [A1, #44]         ; [DPU_V7M3_PIPE] |41| 
        MOV       A3, A1                ; [DPU_V7M3_PIPE] |41| 
        LDR       A1, $C$CON15          ; [DPU_V7M3_PIPE] |41| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_call
	.dwattr $C$DW$33, DW_AT_TI_indirect

        BLX       A3                    ; [DPU_V7M3_PIPE] |41| 
        ; CALL OCCURS {}                 ; [] |41| 
        LDR       A2, $C$CON14          ; [DPU_V7M3_PIPE] |41| 
        MVNS      A1, A1                ; [DPU_V7M3_PIPE] |41| 
        UXTB      A3, A1                ; [DPU_V7M3_PIPE] |41| 
        LDR       A2, [A2, #0]          ; [DPU_V7M3_PIPE] |41| 
        LDR       A1, $C$CON15          ; [DPU_V7M3_PIPE] |41| 
        LDR       A4, [A2, #0]          ; [DPU_V7M3_PIPE] |41| 
        LDRB      A2, [SP, #0]          ; [DPU_V7M3_PIPE] |41| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_call
	.dwattr $C$DW$34, DW_AT_TI_indirect

        BLX       A4                    ; [DPU_V7M3_PIPE] |41| 
        ; CALL OCCURS {}                 ; [] |41| 
	.dwpsn	file "../lib/launchpad.c",line 43,column 1,is_stmt,isa 1
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return

        POP       {A4, PC}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("../lib/launchpad.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x2b)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text:led_write"
	.clink
	.thumbfunc led_write
	.thumb
	.global	led_write

$C$DW$36	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$36, DW_AT_name("led_write")
	.dwattr $C$DW$36, DW_AT_low_pc(led_write)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("led_write")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_TI_begin_file("../lib/launchpad.c")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0x2d)
	.dwattr $C$DW$36, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$36, DW_AT_decl_file("../lib/launchpad.c")
	.dwattr $C$DW$36, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$36, DW_AT_decl_column(0x06)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../lib/launchpad.c",line 45,column 41,is_stmt,address led_write,isa 1

	.dwfde $C$DW$CIE, led_write
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("led")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("led")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg0]

$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("value")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("value")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg1]


;*****************************************************************************
;* FUNCTION NAME: led_write                                                  *
;*                                                                           *
;*   Regs Modified     : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Regs Used         : A1,A2,A3,A4,V9,SP,LR,SR,D0,D0_hi,D1,D1_hi,D2,D2_hi, *
;*                           D3,D3_hi,D4,D4_hi,D5,D5_hi,D6,D6_hi,D7,D7_hi,   *
;*                           FPEXC,FPSCR                                     *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
led_write:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
        PUSH      {A4, LR}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 14, -4
	.dwcfi	save_reg_to_mem, 3, -8
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("led")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("led")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_breg13 0]

$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("value")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("value")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_breg13 1]

;----------------------------------------------------------------------
;  45 | void led_write(uint8_t led, bool value) {                              
;----------------------------------------------------------------------
        STRB      A2, [SP, #1]          ; [DPU_V7M3_PIPE] |45| 
        STRB      A1, [SP, #0]          ; [DPU_V7M3_PIPE] |45| 
	.dwpsn	file "../lib/launchpad.c",line 46,column 5,is_stmt,isa 1
;----------------------------------------------------------------------
;  46 | ROM_GPIOPinWrite(GPIO_PORTF_BASE, led, value ? led : 0);               
;----------------------------------------------------------------------
        LDR       A1, $C$CON16          ; [DPU_V7M3_PIPE] |46| 
        LDR       A3, [A1, #0]          ; [DPU_V7M3_PIPE] |46| 
        LDRB      A2, [SP, #0]          ; [DPU_V7M3_PIPE] |46| 
        LDRB      A1, [SP, #1]          ; [DPU_V7M3_PIPE] |46| 
        LDR       A4, [A3, #0]          ; [DPU_V7M3_PIPE] |46| 
        CBZ       A1, ||$C$L7||         ; [] 
        ; BRANCHCC OCCURS {||$C$L7||}    ; [] |46| 
;* --------------------------------------------------------------------------*
        LDRB      A3, [SP, #0]          ; [DPU_V7M3_PIPE] |46| 
        B         ||$C$L8||             ; [DPU_V7M3_PIPE] |46| 
        ; BRANCH OCCURS {||$C$L8||}      ; [] |46| 
;* --------------------------------------------------------------------------*
||$C$L7||:    
        MOVS      A3, #0                ; [DPU_V7M3_PIPE] |46| 
;* --------------------------------------------------------------------------*
||$C$L8||:    
        LDR       A1, $C$CON17          ; [DPU_V7M3_PIPE] |46| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_call
	.dwattr $C$DW$41, DW_AT_TI_indirect

        BLX       A4                    ; [DPU_V7M3_PIPE] |46| 
        ; CALL OCCURS {}                 ; [] |46| 
	.dwpsn	file "../lib/launchpad.c",line 47,column 1,is_stmt,isa 1
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

        POP       {A4, PC}              ; [DPU_V7M3_PIPE] 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 3
        ; BRANCH OCCURS                  ; [] 
	.dwattr $C$DW$36, DW_AT_TI_end_file("../lib/launchpad.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x2f)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text:launchpad_init"
	.align	4
||$C$CON1||:	.bits		0x1000044,32

	.align	4
||$C$CON2||:	.bits		0xf0000805,32

	.align	4
||$C$CON3||:	.bits		0xf0000800,32

	.align	4
||$C$CON4||:	.bits		0xf0001800,32

	.align	4
||$C$CON5||:	.bits		0x1000020,32

	.align	4
||$C$CON6||:	.bits		0x40025000,32

	.align	4
||$C$CON7||:	.bits		0x1000014,32

	.align	4
||$C$CON8||:	.bits		0x4000c000,32

	.align	4
||$C$CON9||:	.bits	_ftable+24,32
;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text:left_switch"
	.align	4
||$C$CON10||:	.bits		0x1000020,32

	.align	4
||$C$CON11||:	.bits		0x40025000,32

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text:right_switch"
	.align	4
||$C$CON12||:	.bits		0x1000020,32

	.align	4
||$C$CON13||:	.bits		0x40025000,32

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text:led_toggle"
	.align	4
||$C$CON14||:	.bits		0x1000020,32

	.align	4
||$C$CON15||:	.bits		0x40025000,32

;******************************************************************************
;* CONSTANT TABLE                                                             *
;******************************************************************************
	.sect	".text:led_write"
	.align	4
||$C$CON16||:	.bits		0x1000020,32

	.align	4
||$C$CON17||:	.bits		0x40025000,32

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_ftable
	.global	setvbuf

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "aeabi", Tag_File, 1, Tag_ABI_PCS_wchar_t(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_rounding(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_denormal(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_exceptions(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_number_model(1)
	.battr "aeabi", Tag_File, 1, Tag_ABI_enum_size(0)
	.battr "aeabi", Tag_File, 1, Tag_ABI_optimization_goals(5)
	.battr "aeabi", Tag_File, 1, Tag_ABI_FP_optimization_goals(0)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)
	.battr "aeabi", Tag_File, 1, Tag_ABI_VFP_args(3)
	.battr "TI", Tag_File, 1, Tag_FP_interface(1)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x10)
$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$43, DW_AT_name("__max_align1")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("__max_align1")
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$43, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$43, DW_AT_decl_column(0x0c)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$44, DW_AT_name("__max_align2")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("__max_align2")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$44, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$44, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("__max_align_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x03)

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("__int8_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x16)

$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("__int_least8_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x12)

$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x28)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x19)

$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("int8_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x13)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$22	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$22, DW_AT_address_class(0x20)

$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("__uint8_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x18)

$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("__sa_family_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x13)

$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("__uint_least8_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x13)

$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x1a)

$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x14)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)

$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x11)

$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("__int_least16_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x13)

$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x1a)

$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("int16_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x14)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)

$C$DW$T$57	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$57, DW_AT_name("___wchar_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x1a)

$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x19)

$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("__mode_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x14)

$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("__uint_least16_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x14)

$C$DW$T$61	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$61, DW_AT_name("__char16_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x1a)

$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x1a)

$C$DW$T$63	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$63, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x15)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)

$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("_Mbstatet")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x0d)

$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("__mbstate_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x91)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x13)

$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("__accmode_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x0e)

$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("__cpulevel_t")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$76, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$76, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x0e)

$C$DW$T$77	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$77, DW_AT_name("__cpusetid_t")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$77, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x0e)

$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("__cpuwhich_t")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$78, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x0e)

$C$DW$T$79	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$79, DW_AT_name("__ct_rune_t")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$79, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x0e)

$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("__rune_t")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$80, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$80, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x15)

$C$DW$T$81	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$81, DW_AT_name("__wint_t")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$81, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x15)

$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x0f)

$C$DW$T$83	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$83, DW_AT_name("__blksize_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x13)

$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("__clockid_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x13)

$C$DW$T$85	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$85, DW_AT_name("__critical_t")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$85, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x13)

$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("__int_fast16_t")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x55)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x13)

$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$87, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x19)

$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("__int_fast32_t")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x13)

$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x19)

$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("__int_fast8_t")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x13)

$C$DW$T$91	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$91, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x18)

$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("__int_least32_t")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$92, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x13)

$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x1a)

$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("__intfptr_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x13)

$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("__intptr_t")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x13)

$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x15)

$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("__lwpid_t")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x13)

$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("__pid_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x13)

$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("__ptrdiff_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x13)

$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("__register_t")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x13)

$C$DW$T$101	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$101, DW_AT_name("__segsz_t")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x13)

$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("__ssize_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x13)

$C$DW$T$103	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$103, DW_AT_name("int32_t")
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x14)

$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("__nl_item")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$106, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x0e)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)

$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x17)

$C$DW$T$107	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$107, DW_AT_name("__clock_t")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x14)

$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("__fflags_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x14)

$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("__fixpt_t")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$109, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x14)

$C$DW$T$110	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$110, DW_AT_name("__gid_t")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$110, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x14)

$C$DW$T$111	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$111, DW_AT_name("__size_t")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$111, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x14)

$C$DW$T$112	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$112, DW_AT_name("__socklen_t")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$112, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x14)

$C$DW$T$113	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$113, DW_AT_name("__time_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$113, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x19)

$C$DW$T$114	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$114, DW_AT_name("__u_register_t")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x14)

$C$DW$T$115	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$115, DW_AT_name("__uid_t")
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x14)

$C$DW$T$116	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$116, DW_AT_name("__uint_fast16_t")
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$116, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x14)

$C$DW$T$117	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$117, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x1a)

$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("__uint_fast32_t")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$118, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x14)

$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$119, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x1a)

$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("__uint_fast8_t")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x14)

$C$DW$T$121	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$121, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$121, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x19)

$C$DW$T$122	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$122, DW_AT_name("__uint_least32_t")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x14)

$C$DW$T$123	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$123, DW_AT_name("__char32_t")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$123, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x1a)

$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$124, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x1a)

$C$DW$T$125	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$125, DW_AT_name("__uintfptr_t")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$125, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x14)

$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("__uintptr_t")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$126, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x14)

$C$DW$T$127	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$127, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$127, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x16)

$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("__vm_offset_t")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$128, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x14)

$C$DW$T$129	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$129, DW_AT_name("__vm_paddr_t")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$129, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x73)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x14)

$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("__vm_size_t")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$130, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x14)

$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x15)

$C$DW$T$134	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$134, DW_AT_name("__useconds_t")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$134, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x16)

$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("size_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$73, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/stdio.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x19)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$135	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$135, DW_AT_name("__key_t")
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$135, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x0f)

$C$DW$T$136	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$136, DW_AT_name("__suseconds_t")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$136, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x0f)

$C$DW$T$137	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$137, DW_AT_name("fpos_t")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$137, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/stdio.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x0e)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)

$C$DW$T$138	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$138, DW_AT_name("__int64_t")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$138, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x14)

$C$DW$T$139	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$139, DW_AT_name("__blkcnt_t")
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$139, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$139, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x13)

$C$DW$T$140	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$140, DW_AT_name("__id_t")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$140, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$140, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x13)

$C$DW$T$141	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$141, DW_AT_name("__int_fast64_t")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$141, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x13)

$C$DW$T$142	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$142, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$142, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x19)

$C$DW$T$143	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$143, DW_AT_name("__int_least64_t")
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$143, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$143, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$143, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$143, DW_AT_decl_column(0x13)

$C$DW$T$144	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$144, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$144, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$144, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$144, DW_AT_decl_column(0x1a)

$C$DW$T$145	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$145, DW_AT_name("__intmax_t")
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$145, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$145, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$145, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$145, DW_AT_decl_column(0x13)

$C$DW$T$146	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$146, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$T$146, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$146, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$146, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$146, DW_AT_decl_column(0x15)

$C$DW$T$147	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$147, DW_AT_name("__off64_t")
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$147, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$147, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x13)

$C$DW$T$148	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$148, DW_AT_name("__off_t")
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$148, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$148, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$148, DW_AT_decl_column(0x13)

$C$DW$T$149	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$149, DW_AT_name("__rlim_t")
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$149, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$149, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$149, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$149, DW_AT_decl_column(0x13)

$C$DW$T$150	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$150, DW_AT_name("int64_t")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$150, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$150, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$150, DW_AT_decl_column(0x14)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$151	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$151, DW_AT_name("__uint64_t")
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$151, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$151, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$151, DW_AT_decl_column(0x1c)

$C$DW$T$152	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$152, DW_AT_name("__dev_t")
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$152, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$152, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$152, DW_AT_decl_column(0x14)

$C$DW$T$153	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$153, DW_AT_name("__fsblkcnt_t")
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$153, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$153, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$153, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$153, DW_AT_decl_column(0x14)

$C$DW$T$154	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$154, DW_AT_name("__fsfilcnt_t")
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$154, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$154, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$154, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$154, DW_AT_decl_column(0x14)

$C$DW$T$155	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$155, DW_AT_name("__ino_t")
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$155, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$155, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$155, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$155, DW_AT_decl_column(0x14)

$C$DW$T$156	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$156, DW_AT_name("__nlink_t")
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$156, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$156, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$156, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$156, DW_AT_decl_column(0x14)

$C$DW$T$157	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$157, DW_AT_name("__uint_fast64_t")
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$157, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$157, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$157, DW_AT_decl_column(0x14)

$C$DW$T$158	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$158, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$T$158, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$158, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$158, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$158, DW_AT_decl_column(0x1a)

$C$DW$T$159	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$159, DW_AT_name("__uint_least64_t")
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$159, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$159, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$159, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$159, DW_AT_decl_column(0x14)

$C$DW$T$160	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$160, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$160, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$T$160, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$160, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$160, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$160, DW_AT_decl_column(0x1a)

$C$DW$T$161	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$161, DW_AT_name("__uintmax_t")
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$161, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$161, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$161, DW_AT_decl_line(0x67)
	.dwattr $C$DW$T$161, DW_AT_decl_column(0x14)

$C$DW$T$162	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$162, DW_AT_name("__rman_res_t")
	.dwattr $C$DW$T$162, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$T$162, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$162, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$162, DW_AT_decl_line(0x99)
	.dwattr $C$DW$T$162, DW_AT_decl_column(0x19)

$C$DW$T$163	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$163, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$T$163, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$163, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$163, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$163, DW_AT_decl_column(0x16)

$C$DW$T$164	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$164, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$164, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$164, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$164, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$164, DW_AT_decl_column(0x15)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$165	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$165, DW_AT_name("__float_t")
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$165, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$165, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$165, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$165, DW_AT_decl_column(0x10)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$166	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$166, DW_AT_name("__double_t")
	.dwattr $C$DW$T$166, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$166, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$166, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$166, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$166, DW_AT_decl_column(0x11)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$30	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$30, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$30, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)

$C$DW$T$71	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$71, DW_AT_address_class(0x20)

$C$DW$T$72	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)


$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("__mq")
	.dwattr $C$DW$T$19, DW_AT_declaration
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$19

$C$DW$T$168	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$168, DW_AT_address_class(0x20)

$C$DW$T$169	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$169, DW_AT_name("__mqd_t")
	.dwattr $C$DW$T$169, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$T$169, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$169, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$169, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$169, DW_AT_decl_column(0x16)


$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("__sFILE")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x18)
$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$45, DW_AT_name("fd")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("fd")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$45, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/stdio.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x52)
	.dwattr $C$DW$45, DW_AT_decl_column(0x0b)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$46, DW_AT_name("buf")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$46, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/stdio.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x53)
	.dwattr $C$DW$46, DW_AT_decl_column(0x16)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$47, DW_AT_name("pos")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("pos")
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$47, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/stdio.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x54)
	.dwattr $C$DW$47, DW_AT_decl_column(0x16)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$48, DW_AT_name("bufend")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("bufend")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$48, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/stdio.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x55)
	.dwattr $C$DW$48, DW_AT_decl_column(0x16)

$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$49, DW_AT_name("buff_stop")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("buff_stop")
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$49, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/stdio.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x56)
	.dwattr $C$DW$49, DW_AT_decl_column(0x16)

$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$50, DW_AT_name("flags")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("flags")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$50, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/stdio.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0x57)
	.dwattr $C$DW$50, DW_AT_decl_column(0x16)

	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/stdio.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$23

$C$DW$T$67	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$67, DW_AT_name("FILE")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/stdio.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x18)

$C$DW$T$68	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_address_class(0x20)

$C$DW$T$69	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)


$C$DW$T$170	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$170, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$170, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$170, DW_AT_byte_size(0xf0)
$C$DW$51	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$51, DW_AT_upper_bound(0x09)

	.dwendtag $C$DW$T$170


$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("__timer")
	.dwattr $C$DW$T$20, DW_AT_declaration
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

$C$DW$T$171	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$171, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$171, DW_AT_address_class(0x20)

$C$DW$T$172	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$172, DW_AT_name("__timer_t")
	.dwattr $C$DW$T$172, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$T$172, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$172, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$172, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$172, DW_AT_decl_column(0x19)


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("__va_list_t")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x04)
$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$52, DW_AT_name("__ap")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("__ap")
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$52, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$52, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$24, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$24

$C$DW$T$173	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$173, DW_AT_name("__va_list")
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$173, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$173, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$173, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$T$173, DW_AT_decl_column(0x03)

$C$DW$T$174	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$174, DW_AT_name("va_list")
	.dwattr $C$DW$T$174, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$T$174, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$174, DW_AT_decl_file("C:/ti/ccs930/ccs/tools/compiler/ti-cgt-arm_18.12.4.LTS/include/stdarg.h")
	.dwattr $C$DW$T$174, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$174, DW_AT_decl_column(0x13)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 14
	.dwcfi	cfa_register, 13
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 80
	.dwcfi	same_value, 81
	.dwcfi	same_value, 82
	.dwcfi	same_value, 83
	.dwcfi	same_value, 84
	.dwcfi	same_value, 85
	.dwcfi	same_value, 86
	.dwcfi	same_value, 87
	.dwcfi	same_value, 88
	.dwcfi	same_value, 89
	.dwcfi	same_value, 90
	.dwcfi	same_value, 91
	.dwcfi	same_value, 92
	.dwcfi	same_value, 93
	.dwcfi	same_value, 94
	.dwcfi	same_value, 95
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$53	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$53, DW_AT_name("A1")
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg0]

$C$DW$54	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$54, DW_AT_name("A2")
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg1]

$C$DW$55	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$55, DW_AT_name("A3")
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg2]

$C$DW$56	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$56, DW_AT_name("A4")
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg3]

$C$DW$57	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$57, DW_AT_name("V1")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg4]

$C$DW$58	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$58, DW_AT_name("V2")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg5]

$C$DW$59	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$59, DW_AT_name("V3")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg6]

$C$DW$60	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$60, DW_AT_name("V4")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg7]

$C$DW$61	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$61, DW_AT_name("V5")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg8]

$C$DW$62	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$62, DW_AT_name("V6")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg9]

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("V7")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg10]

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("V8")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg11]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("V9")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg12]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("SP")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg13]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("LR")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg14]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("PC")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg15]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("SR")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg17]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("AP")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg7]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("D0")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x40]

$C$DW$72	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$72, DW_AT_name("D0_hi")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x41]

$C$DW$73	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$73, DW_AT_name("D1")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_regx 0x42]

$C$DW$74	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$74, DW_AT_name("D1_hi")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x43]

$C$DW$75	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$75, DW_AT_name("D2")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x44]

$C$DW$76	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$76, DW_AT_name("D2_hi")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x45]

$C$DW$77	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$77, DW_AT_name("D3")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x46]

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("D3_hi")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x47]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("D4")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x48]

$C$DW$80	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$80, DW_AT_name("D4_hi")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_regx 0x49]

$C$DW$81	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$81, DW_AT_name("D5")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_regx 0x4a]

$C$DW$82	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$82, DW_AT_name("D5_hi")
	.dwattr $C$DW$82, DW_AT_location[DW_OP_regx 0x4b]

$C$DW$83	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$83, DW_AT_name("D6")
	.dwattr $C$DW$83, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$84	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$84, DW_AT_name("D6_hi")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$85	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$85, DW_AT_name("D7")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_regx 0x4e]

$C$DW$86	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$86, DW_AT_name("D7_hi")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_regx 0x4f]

$C$DW$87	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$87, DW_AT_name("D8")
	.dwattr $C$DW$87, DW_AT_location[DW_OP_regx 0x50]

$C$DW$88	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$88, DW_AT_name("D8_hi")
	.dwattr $C$DW$88, DW_AT_location[DW_OP_regx 0x51]

$C$DW$89	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$89, DW_AT_name("D9")
	.dwattr $C$DW$89, DW_AT_location[DW_OP_regx 0x52]

$C$DW$90	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$90, DW_AT_name("D9_hi")
	.dwattr $C$DW$90, DW_AT_location[DW_OP_regx 0x53]

$C$DW$91	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$91, DW_AT_name("D10")
	.dwattr $C$DW$91, DW_AT_location[DW_OP_regx 0x54]

$C$DW$92	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$92, DW_AT_name("D10_hi")
	.dwattr $C$DW$92, DW_AT_location[DW_OP_regx 0x55]

$C$DW$93	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$93, DW_AT_name("D11")
	.dwattr $C$DW$93, DW_AT_location[DW_OP_regx 0x56]

$C$DW$94	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$94, DW_AT_name("D11_hi")
	.dwattr $C$DW$94, DW_AT_location[DW_OP_regx 0x57]

$C$DW$95	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$95, DW_AT_name("D12")
	.dwattr $C$DW$95, DW_AT_location[DW_OP_regx 0x58]

$C$DW$96	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$96, DW_AT_name("D12_hi")
	.dwattr $C$DW$96, DW_AT_location[DW_OP_regx 0x59]

$C$DW$97	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$97, DW_AT_name("D13")
	.dwattr $C$DW$97, DW_AT_location[DW_OP_regx 0x5a]

$C$DW$98	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$98, DW_AT_name("D13_hi")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_regx 0x5b]

$C$DW$99	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$99, DW_AT_name("D14")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_regx 0x5c]

$C$DW$100	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$100, DW_AT_name("D14_hi")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_regx 0x5d]

$C$DW$101	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$101, DW_AT_name("D15")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x5e]

$C$DW$102	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$102, DW_AT_name("D15_hi")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_regx 0x5f]

$C$DW$103	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$103, DW_AT_name("FPEXC")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg18]

$C$DW$104	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$104, DW_AT_name("FPSCR")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU

