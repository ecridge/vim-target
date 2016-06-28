if exists("b:current_syntax")
  finish
endif

syntax keyword targetDefine define

syntax keyword targetFunction AXIS AXMAP1 AXMAP2 ActKey CHAIN Configure D
syntax keyword targetFunction DXAxis DefaultMapping DeferCall EXEC EventHandle
syntax keyword targetFunction Init KeyAxis LED LIST LockAxis MapAxis MapKey
syntax keyword targetFunction MapKeyIO MapKeyIOUMD MapKeyR MapKeyRIO
syntax keyword targetFunction MapKeyRIOUMD MapKeyUMD REXEC RotateDXAxis SEQ SET
syntax keyword targetFunction SetCustomCurve SetJCurve SetKBLayout SetKBRate
syntax keyword targetFunction SetSCurve SetShiftButton StopAutoRepeat TEMPO
syntax keyword targetFunction TrimDXAxis abs cos ln main printf sin system

syntax keyword targetInclude include

syntax keyword targetMacro AMAXF ANT_ELEV APAH APALT APDIS APENG APPAT APUOFF
syntax keyword targetMacro APUON AXIS_NORMAL AXIS_REVERSED BRK BSB BSF BSP CAPS
syntax keyword targetMacro CHB CHF CSD CSL CSR CSU DARROW DEL DX1 DX10 DX11
syntax keyword targetMacro DX12 DX13 DX14 DX15 DX16 DX17 DX18 DX19 DX2 DX20
syntax keyword targetMacro DX21 DX22 DX23 DX24 DX25 DX26 DX27 DX28 DX29 DX3
syntax keyword targetMacro DX30 DX31 DX32 DX4 DX5 DX6 DX7 DX8 DX9 DXHATDOWN
syntax keyword targetMacro DXHATDOWNLEFT DXHATDOWNRIGHT DXHATLEFT DXHATRIGHT
syntax keyword targetMacro DXHATUP DXHATUPLEFT DXHATUPRIGHT DX_SLIDER_AXIS
syntax keyword targetMacro DX_THROTTLE_AXIS DX_XROT_AXIS DX_X_AXIS DX_YROT_AXIS
syntax keyword targetMacro DX_Y_AXIS DX_ZROT_AXIS DX_Z_AXIS EACOFF EACON
syntax keyword targetMacro EFLNORM EFLOVER EFRNORM END ENT ERFOVER ESC F1 F10
syntax keyword targetMacro F11 F12 F2 F3 F4 F5 F6 F7 F8 F9 H1D H1L H1R H1U H2D
syntax keyword targetMacro H2L H2R H2U H3D H3L H3R H3U H4D H4L H4P H4R H4U
syntax keyword targetMacro HCougar HOME INS JOYX JOYY Joystick KB_FR KP0 KP1
syntax keyword targetMacro KP2 KP3 KP4 KP5 KP6 KP7 KP8 KP9 KPENT LARROW LDGH
syntax keyword targetMacro LED1 LED2 LED3 LED4 LED5 LED_CURRENT LED_INTENSITY
syntax keyword targetMacro LED_ONOFF LMFD LTB L_ALT L_CTL L_SHIFT L_WIN MAN_RNG
syntax keyword targetMacro MAP_ABSOLUTE MAP_RELATIVE MODE_EXCLUDED MOUSE_X_AXIS
syntax keyword targetMacro MOUSE_Y_AXIS MSD MSL MSP MSR MSU NUML PGDN PGUP
syntax keyword targetMacro PRNTSCRN PSB PSF PSM RARROW RDRDIS RDRNRM RDR_X
syntax keyword targetMacro RDR_Y RMFD RNOSTOP RUDDER R_ALT R_CTL R_SHIFT R_WIN
syntax keyword targetMacro S1 S2 S3 S4 SC SCRLCK SCX SCY SPC SPDB SPDF T16000
syntax keyword targetMacro TAB TG1 TG2 THROTTLE THR_FC THR_LEFT THR_RIGHT
syntax keyword targetMacro Throttle UARROW USB

syntax keyword targetKeyword while return if goto else do break UP+ UDTOGGLE
syntax keyword targetKeyword PULSE+ LOCK+ LOCK KEYON IOTOGGLE DOWN+

syntax keyword targetType alias byte char float int short struct word

highlight link targetDefine   Define
highlight link targetFunction Function
highlight link targetInclude  Include
highlight link targetKeyword  Keyword
highlight link targetMacro    Macro
highlight link targetType     Type
