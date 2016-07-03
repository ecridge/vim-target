" Name:     Thrustmaster TARGET Script plugin for Vim
" Author:   Joe Cridge <joe.cridge@me.com>
" URL:      https://github.com/joecridge/vim-target.git
" License:  Unlicense
" Created:  In the middle of the night
" Modified: 2016-07-03

if exists("b:current_syntax")
  finish
endif

" Operators
syntax match targetOperator "\v[!%&*+/<>^|-]"
syntax match targetOperator "\v(\[|\])"
syntax match targetOperator "\v[!<>=]\="
syntax match targetOperator "\v([<>])\1"

" Literals
syntax match targetNumber    "\v(\w|\.)@<!(0|[1-9]\d*)(\.\d+)?(\w|\.)@!"
syntax match targetNumber    "\v(\w|\.)@<!0x[A-F0-9]+(\w|\.)@!"
syntax match targetCharacter "'[^']'"
syntax match targetCharacter "'\\.'"

" Data types
syntax keyword targetType alias byte char float int short struct word

" Preprocessor defines
syntax keyword targetDefine define

" Preprocessor includes
syntax keyword targetInclude include

" Language keywords
syntax match   targetKeyword "\v<DOWN>\s*\+"
syntax match   targetKeyword "\v<KEYON>\s*\+"
syntax match   targetKeyword "\v<LOCK>(\s*\+)?"
syntax match   targetKeyword "\v<PULSE>\s*\+"
syntax match   targetKeyword "\v<UP>\s*\+"
syntax keyword targetKeyword break do else goto if return while

" Built-in functions
syntax keyword targetFunction AXIS AXMAP1 AXMAP2 ActKey CHAIN Configure D
syntax keyword targetFunction DXAxis DefaultMapping DeferCall EXEC EventHandle
syntax keyword targetFunction Init KeyAxis LED LIST LockAxis MapAxis MapKey
syntax keyword targetFunction MapKeyIO MapKeyIOUMD MapKeyR MapKeyRIO
syntax keyword targetFunction MapKeyRIOUMD MapKeyUMD REXEC RotateDXAxis SEQ SET
syntax keyword targetFunction SetCustomCurve SetJCurve SetKBLayout SetKBRate
syntax keyword targetFunction SetSCurve SetShiftButton StopAutoRepeat TEMPO
syntax keyword targetFunction TrimDXAxis abs cos ln main printf sin system

" Predefined macros
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
syntax keyword targetMacro F11 F12 F2 F3 F4 F5 F6 F7 F8 F9 H1D H1L H1R H1U
syntax keyword targetMacro H2D H2L H2R H2U H3D H3L H3R H3U H4D H4L H4P H4R
syntax keyword targetMacro H4U HCougar HOME INS IOTOGGLE JOYX JOYY Joystick
syntax keyword targetMacro KB_FR KP0 KP1 KP2 KP3 KP4 KP5 KP6 KP7 KP8 KP9 KPENT
syntax keyword targetMacro LARROW LDGH LED1 LED2 LED3 LED4 LED5 LED_CURRENT
syntax keyword targetMacro LED_INTENSITY LED_ONOFF LMFD LTB L_ALT L_CTL
syntax keyword targetMacro L_SHIFT L_WIN MAN_RNG MAP_ABSOLUTE MAP_RELATIVE
syntax keyword targetMacro MODE_EXCLUDED MOUSE_X_AXIS MOUSE_Y_AXIS MSD MSL MSP
syntax keyword targetMacro MSR MSU NUML PGDN PGUP PRNTSCRN PSB PSF PSM RARROW
syntax keyword targetMacro RDRDIS RDRNRM RDR_X RDR_Y RMFD RNOSTOP RUDDER R_ALT
syntax keyword targetMacro R_CTL R_SHIFT R_WIN S1 S2 S3 S4 SC SCRLCK SCX SCY
syntax keyword targetMacro SPC SPDB SPDF T16000 TAB TG1 TG2 THROTTLE THR_FC
syntax keyword targetMacro THR_LEFT THR_RIGHT Throttle UARROW UDTOGGLE USB

" Strings
syntax region targetString start=/\v"/ skip=/\v\\./ end=/\v"/

" Comments
syntax match targetComment "\v//.*$"


" Highlight links
highlight link targetDefine    Define
highlight link targetComment   Comment
highlight link targetCharacter Character
highlight link targetFunction  Function
highlight link targetInclude   Include
highlight link targetKeyword   Keyword
highlight link targetMacro     Macro
highlight link targetNumber    Number
highlight link targetOperator  Operator
highlight link targetString    String
highlight link targetType      Type


let b:current_syntax = "target"

" vim: set fdm=expr fde=getline(v\:lnum)=~'\\v^\"\ '&&getline(v\:lnum-1)=~'\\v^$'&&getline(v\:lnum+1)=~'\\v^\\w'?'a1'\:getline(v\:lnum)=~'\\v^$'?'s1'\:'-1':
