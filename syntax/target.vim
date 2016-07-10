" Name:     Thrustmaster TARGET Script plugin for Vim
" Author:   Joe Cridge <joe.cridge@me.com>
" URL:      https://github.com/joecridge/vim-target.git
" License:  Unlicense
" Created:  2016-06-29
" Modified: 2016-07-10

if exists('b:current_syntax')
  finish
endif

" Operators
syntax match targetOperator "\v[!%&*+/<>^|-]"
syntax match targetOperator "\v(\[|\])"
syntax match targetOperator "\v[!<>=]\="
syntax match targetOperator "\v([<>])\1"

" Literals
syntax match targetCharacter "\v('[^']'|'\\.')"
syntax match targetNumber    "\v(\w|\.)@<!0x[A-F0-9]+(\w|\.)@!"
syntax match targetNumber    "\v(\w|\.)@<!(0|[1-9]\d*)(\w|\.)@!"
syntax match targetFloat     "\v(\w|\.)@<!(0|[1-9]\d*)\.\d+([Ee]\d+)?(\w|\.)@!"

" Types
syntax keyword targetType alias byte char DXAxisStatus float int sAxis sDevice
syntax keyword targetType short stGameCfg struct word

" Keywords
syntax match   targetKeyword "\v<UP>\s*\+"
syntax match   targetKeyword "\v<DOWN>\s*\+"
syntax match   targetKeyword "\v<KEYON>\s*\+"
syntax match   targetKeyword "\v<PULSE>\s*\+"
syntax match   targetKeyword "\v<LOCK>(\s*\+)?"
syntax match   targetKeyword "\v<L_ALT>\s*\+"
syntax match   targetKeyword "\v<R_ALT>\s*\+"
syntax match   targetKeyword "\v<L_CTL>\s*\+"
syntax match   targetKeyword "\v<R_CTL>\s*\+"
syntax match   targetKeyword "\v<L_SHIFT>\s*\+"
syntax match   targetKeyword "\v<R_SHIFT>\s*\+"
syntax match   targetKeyword "\v<L_WIN>\s*\+"
syntax match   targetKeyword "\v<R_WIN>\s*\+"
syntax keyword targetKeyword break define do else goto if include return while

" Functions
syntax keyword targetFunction Abort abs acos ActKey asin ASMAlloc ASMFind atan
syntax keyword targetFunction atan2 AutoRepeat AXIS axis1 axisproc AxisVal
syntax keyword targetFunction AXMAP1 axmap1proc AXMAP2 axmap2proc CHAIN
syntax keyword targetFunction chainproc clip Configure cos D DefaultMapping
syntax keyword targetFunction DeferCall DefEventHandler defined Dim
syntax keyword targetFunction dis DX DXAxis DXSetAxis elements eval
syntax keyword targetFunction Exclude EXEC execproc execute exp fclose
syntax keyword targetFunction fcurve feof fgetc fopen fputc fread free
syntax keyword targetFunction FreeLibrary FreeProcInstance fseek ftell fwrite
syntax keyword targetFunction GameOutput GetAxisData GetCustomCurveValue
syntax keyword targetFunction GetDeviceCapabilities GetDeviceData GetIndexJoy
syntax keyword targetFunction GetInputValue GetLayerBits GetListPos getmem
syntax keyword targetFunction GetMouseX GetMouseY GetProcAddress gettype
syntax keyword targetFunction Hat2Btn HatUp HoldKey ieval iexecute Init
syntax keyword targetFunction InitSocketServer input Key KeyAxis KeyD KeyU LED
syntax keyword targetFunction ledproc LI ln LoadLibrary LockAxis LockDXAxis
syntax keyword targetFunction LockPulseTimestamps log main MakeProcInstance
syntax keyword targetFunction malloc Map MapAxis MapKey MapKeyIO MapKeyIOUMD
syntax keyword targetFunction MapKeyR MapKeyRIO MapKeyRIOUMD MapKeyRUMD
syntax keyword targetFunction MapKeyUMD MapList memcpy msize P2Curve PlugGame
syntax keyword targetFunction PlugKeyboard PlugMouse PostEvent pow printf
syntax keyword targetFunction ProcInstCallback PulseKey putchar realloc
syntax keyword targetFunction regexproc RegisterGameCallback RemoveEvent REXEC
syntax keyword targetFunction RJLoop RotateDXAxis RPT Select SelectUsbDevice
syntax keyword targetFunction SelectUsbDevices SEQ seqproc SET SetCustomCurve
syntax keyword targetFunction SetEventHandler SetJCurve SetKBLayout SetKBRate
syntax keyword targetFunction setmem SetSCurve SetShiftButton sgn sin sizeof
syntax keyword targetFunction Sleep sprintf sqrt StopAutoRepeat strcat strchr
syntax keyword targetFunction strcmp strdel strins strlen strname strstr strsub
syntax keyword targetFunction system tan TEMPO tempo1 tempoproc TrimDXAxis
syntax keyword targetFunction VirtualOutput X _AXMAP2 _CHAIN _GetMouse _key
syntax keyword targetFunction _SEQ

" Global variables
syntax keyword targetGlobal alloc_locked ASC ASCE ASCF ASCG axdata Axis
syntax keyword targetGlobal chaincall chainlock CONFIG_HOTAS1 CONFIG_HOTAS2
syntax keyword targetGlobal CONFIG_T16000 csStatus devdata devicedata
syntax keyword targetGlobal gameSocketData gllk h16000LStatus h16000Status
syntax keyword targetGlobal h1cStatus h1Status h2blookup hatlkup hatstatus
syntax keyword targetGlobal HCougar HCougarMap hTWCSThrottleStatus
syntax keyword targetGlobal HWID_HOTAS HWID_T16000 HWID_WARTHOG_JOYSTICK
syntax keyword targetGlobal HWID_WARTHOG_THROTTLE joy0 joy1 joy2 joy3 joy4 joy5
syntax keyword targetGlobal joy6 joy7 joy8 joy9 joy10 joy11 joy12 joy13 joy14
syntax keyword targetGlobal joy15 joy16 Joystick JoystickMap KBLayout kb_delay
syntax keyword targetGlobal kb_pulse keyalloc kpos layer layer_sw ledcmd LMFD
syntax keyword targetGlobal MFDMap RMFD T16000 T16000L T16000Map TFRPRudder
syntax keyword targetGlobal TFRPRudderMap Throttle ThrottleMap tmp TWCSThrottle
syntax keyword targetGlobal TWCSThrottleMap USB VARSIZE vbtntbl virtualj _evh
syntax keyword targetGlobal _gch

" Macros
syntax keyword targetMacro ALT AMAX AMAXF ANT_ELEV APAH APALT APDIS APENG
syntax keyword targetMacro APPAT APPS APUOFF APUON ASC_AGR ASC_SHF AXDATASIZE
syntax keyword targetMacro AXIS_NORMAL AXIS_REVERSED B5 B6 B7 B8 B9 B10 B11
syntax keyword targetMacro B12 B13 B14 B15 B16 BRK BRTD BRTU BSB BSF BSM
syntax keyword targetMacro BSP CAPS CHB CHF CHM COND CONU CREATE_JOYSTICK
syntax keyword targetMacro CREATE_KEYBOARD CREATE_MOUSE CS CSD CSL CSR CSU
syntax keyword targetMacro CTL CURRENT DARROW DEL DELAY DFM DX1 DX2 DX3 DX4
syntax keyword targetMacro DX5 DX6 DX7 DX8 DX9 DX10 DX11 DX12 DX13 DX14
syntax keyword targetMacro DX15 DX16 DX17 DX18 DX19 DX20 DX21 DX22 DX23
syntax keyword targetMacro DX24 DX25 DX26 DX27 DX28 DX29 DX30 DX31 DX32
syntax keyword targetMacro DXHATDOWN DXHATDOWNLEFT DXHATDOWNRIGHT DXHATLEFT
syntax keyword targetMacro DXHATRIGHT DXHATUP DXHATUPLEFT DXHATUPRIGHT
syntax keyword targetMacro DX_SLIDER_AXIS DX_THROTTLE_AXIS DX_XROT_AXIS
syntax keyword targetMacro DX_X_AXIS DX_YROT_AXIS DX_Y_AXIS DX_ZROT_AXIS
syntax keyword targetMacro DX_Z_AXIS EACOFF EACON EFLNORM EFLOVER EFRNORM
syntax keyword targetMacro EFROVER END ENT EOLIGN EOLMOTOR EOLNORM EORIGN
syntax keyword targetMacro EORMOTOR EORNORM ESC EV_GAME_DATA EV_HID_INPUT_DATA
syntax keyword targetMacro EV_HID_INPUT_DATA_FILTER EV_HID_NONE EV_USR F1
syntax keyword targetMacro F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12 F13 F14 F15
syntax keyword targetMacro F16 F17 F18 F19 F20 F21 F22 F23 F24 FLAPD FLAPM
syntax keyword targetMacro FLAPU GAIND GAINU H1D H1L H1R H1U H2D H2L H2R
syntax keyword targetMacro H2U H3D H3L H3R H3U H4D H4L H4P H4R H4U HAT HOME
syntax keyword targetMacro IDLELOFF IDLELON IDLEROFF IDLERON INS IN_MAX_AXES
syntax keyword targetMacro IN_MAX_BUTTONS IN_MAX_HAT IN_OFFSET_AXIS_RX
syntax keyword targetMacro IN_OFFSET_AXIS_RY IN_OFFSET_AXIS_RZ
syntax keyword targetMacro IN_OFFSET_AXIS_SLIDER1 IN_OFFSET_AXIS_SLIDER2
syntax keyword targetMacro IN_OFFSET_AXIS_SLIDER3 IN_OFFSET_AXIS_SLIDER4
syntax keyword targetMacro IN_OFFSET_AXIS_THROTTLE IN_OFFSET_AXIS_X
syntax keyword targetMacro IN_OFFSET_AXIS_Y IN_OFFSET_AXIS_Z IN_POSITION_AXES
syntax keyword targetMacro IN_POSITION_AXIS_RX IN_POSITION_AXIS_RY
syntax keyword targetMacro IN_POSITION_AXIS_RZ IN_POSITION_AXIS_SLIDER1
syntax keyword targetMacro IN_POSITION_AXIS_SLIDER2 IN_POSITION_AXIS_SLIDER3
syntax keyword targetMacro IN_POSITION_AXIS_SLIDER4 IN_POSITION_AXIS_THROTTLE
syntax keyword targetMacro IN_POSITION_AXIS_X IN_POSITION_AXIS_Y
syntax keyword targetMacro IN_POSITION_AXIS_Z IN_POSITION_BUTTONS
syntax keyword targetMacro IN_POSITION_HAT IN_POSITION_SIZE IOTOGGLE JOYX
syntax keyword targetMacro JOYY JUMP KB_ENG KB_FR KB_GER KDATASIZE KP0 KP1
syntax keyword targetMacro KP2 KP3 KP4 KP5 KP6 KP7 KP8 KP9 KPENT LALT LARROW
syntax keyword targetMacro LCTL LDGH LED0 LED1 LED2 LED3 LED4 LED5 LED_CURRENT
syntax keyword targetMacro LED_INTENSITY LED_ONOFF LIST LSHF LTB LWIN MAN_RNG
syntax keyword targetMacro MAP_ABSOLUTE MAP_IPTR MAP_IPTR_VPN MAP_NORMAL
syntax keyword targetMacro MAP_RELATIVE MAP_THISCALL MAXAXDATA MAXKEYDATA
syntax keyword targetMacro MODE_EXCLUDED MODE_FILTERED MODE_KEEPENABLED
syntax keyword targetMacro MOUSE_BTN4 MOUSE_BTN5 MOUSE_CENTER MOUSE_LEFT
syntax keyword targetMacro MOUSE_RIGHT MOUSE_X_AXIS MOUSE_Y_AXIS MOUSE_Z_AXIS
syntax keyword targetMacro MSD MSL MSP MSR MSU NUML OSB01 OSB02 OSB03 OSB04
syntax keyword targetMacro OSB05 OSB06 OSB07 OSB08 OSB09 OSB10 OSB11 OSB12
syntax keyword targetMacro OSB13 OSB14 OSB15 OSB16 OSB17 OSB18 OSB19 OSB20
syntax keyword targetMacro OUT_ID_AXIS OUT_ID_BUTTON OUT_ID_HAT OUT_ID_HID_MAX
syntax keyword targetMacro OUT_ID_LED OUT_ID_LED_1 OUT_ID_LED_2 OUT_ID_LED_3
syntax keyword targetMacro OUT_ID_LED_4 OUT_ID_LED_5 OUT_ID_LED_BACKLIGHT
syntax keyword targetMacro OUT_ID_LED_INTENSITY OUT_ID_TIMER
syntax keyword targetMacro OUT_TYPE_GAME OUT_TYPE_KEYBOARD OUT_TYPE_MOUSE
syntax keyword targetMacro OUT_TYPE_UNKNOWN OUT_VALUE_BUTTON_PRESS
syntax keyword targetMacro OUT_VALUE_BUTTON_PRESS_RELEASE
syntax keyword targetMacro OUT_VALUE_BUTTON_RELEASE OUT_VALUE_BUTTON_TOGGLE
syntax keyword targetMacro OUT_VALUE_TIMER_START OUT_VALUE_TIMER_STOP PGDN
syntax keyword targetMacro PGUP POV POVCENTER POVD POVDL POVDR POVL POVR POVU
syntax keyword targetMacro POVUL POVUR PRNTSCRN PROC PSB PSF PSM RALT RARROW
syntax keyword targetMacro RCTL RDRDIS RDRNRM RDR_X RDR_Y RNOSTOP RSHF RUDDER
syntax keyword targetMacro RWIN S1 S2 S3 S4 SC SCRLCK SCX SCY SEEK_CUR SEEK_END
syntax keyword targetMacro SEEK_SET SHF SPC SPDB SPDF SPDM SYMD SYMU T1 T2 T3
syntax keyword targetMacro T4 T5 T6 T7 T8 T9 T10 TAB TANT TBTN1 TBTN2 TBTN3
syntax keyword targetMacro TBTN4 TBTN5 TG1 TG2 THAT1D THAT1L THAT1R THAT1U
syntax keyword targetMacro THAT2 THAT2D THAT2L THAT2R THAT2U THAT3D THAT3L
syntax keyword targetMacro THAT3R THAT3U THR THROTTLE THR_FC THR_LEFT THR_RIGHT
syntax keyword targetMacro TLOCK TMSTX TMSTY TRDR TRPLEFT TRPRIGHT TRUDDER TS1
syntax keyword targetMacro TS2 TS3 TS4 TTHR UARROW UDTOGGLE VAR_ALIAS VAR_BYTE
syntax keyword targetMacro VAR_CHAR VAR_FLOAT VAR_INT VAR_NONE VAR_SHORT
syntax keyword targetMacro VAR_STRUCT VAR_WORD

" Strings
syntax region targetString start=/\v"/ skip=/\v\\./ end=/\v"/

" Comments
syntax match targetComment "\v//.*$"


" Configuration
highlight link targetCharacter Character
highlight link targetComment   Comment
highlight link targetFloat     Float
highlight link targetFunction  Function
highlight link targetGlobal    Special
highlight link targetKeyword   Keyword
highlight link targetMacro     Macro
highlight link targetNumber    Number
highlight link targetOperator  Operator
highlight link targetString    String
highlight link targetType      Type


let b:current_syntax = 'target'

" vim: set fdm=expr fde=getline(v\:lnum)=~'\\v^\"\ '&&getline(v\:lnum-1)=~'\\v^$'&&getline(v\:lnum+1)=~'\\v^\\w'?'a1'\:getline(v\:lnum)=~'\\v^$'?'s1'\:'-1':
