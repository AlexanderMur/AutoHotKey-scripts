#SingleInstance, force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

tabPressed := false
ePressed := false
shiftKey := false
pressed3 := false



$1::
	wasHold := false
	wasShift := false
	if (GetKeyState("LButton")){
		SendInput {Click Left up}
		wasHold := true
	}
	if (GetKeyState("Shift")){
		wasShift := true
	}
	SendInput, ww1
	Click Right
	if (wasHold == true){
		; sleep, 500
		if (wasShift == true){
			SendInput {Shift down}{Click left down}
		} else {
			SendInput {Click left down}
		}
	}
return

; $+1::
; 	wasHold := false
; 	wasShift := false
; 	if (GetKeyState("LButton")){
; 		SendInput {Click Left up}
; 		wasHold := true
; 	}
; 	if (GetKeyState("Shift")){
; 		wasShift := true
; 	}
; 	SendInput, ww1
; 	Click Left
; 	if (wasHold == true){
; 		; sleep, 500
; 		if (wasShift == true){
; 			SendInput {Shift down}{Click left down}
; 		} else {
; 			SendInput {Click left down}
; 		}
; 	}
; return


$2::
	wasHold := false
	wasShift := false
	if (GetKeyState("LButton")){
		SendInput {Click Left up}
		wasHold := true
	}
	if (GetKeyState("Shift")){
		wasShift := true
	}
	SendInput, ww2
	Click Left
	if (wasHold == true){
		; sleep, 500
		if (wasShift == true){
			SendInput {Shift down}{Click left down}
		} else {
			SendInput {Click left down}
		}
	}
return

$+2::
	wasHold := false
	wasShift := false
	if (GetKeyState("LButton")){
		SendInput {Click Left up}
		wasHold := true
	}
	if (GetKeyState("Shift")){
		wasShift := true
	}
	SendInput, ww2
	Click Left
	if (wasHold == true){
		; sleep, 500
		if (wasShift == true){
			SendInput {Shift down}{Click left down}
		} else {
			SendInput {Click left down}
		}
	}
return


$3::
	wasHold := false
	wasShift := false
	if (GetKeyState("LButton")){
		SendInput {Click Left up}
		wasHold := true
	}
	if (GetKeyState("Shift")){
		wasShift := true
	}
	SendInput, ww3
	; Click Left
	if (wasHold == true){
		; sleep, 500
		if (wasShift == true){
			SendInput {Shift down}{Click left down}
		} else {
			SendInput {Click left down}
		}
	}
return

$+3::
	wasHold := false
	wasShift := false
	if (GetKeyState("LButton")){
		SendInput {Click Left up}
		wasHold := true
	}
	if (GetKeyState("Shift")){
		wasShift := true
	}
	SendInput, ww3
	; Click Left
	if (wasHold == true){
		; sleep, 500
		if (wasShift == true){
			SendInput {Shift down}{Click left down}
		} else {
			SendInput {Click left down}
		}
	}
return

; $4::
; 	wasHold := false
; 	wasww1Shift := false
; 	if (GetKeyState("LButton")){
; 		SendInput {Click Left up}
; 		wasHold := true
; 	}
; 	if (GetKeyState("Shift")){
; 		wasShift := true
; 	}
; 	SendInput, ww4
; 	Click Left
; 	if (wasHold == true){
; 		; sleep, 500
; 		if (wasShift == true){
; 			SendInput {Shift down}{Click left down}
; 		} else {
; 			SendInput {Click left down}
; 		}
; 	}
; return

; $+4::
; 	wasHold := false
; 	wasShift := false
; 	if (GetKeyState("LButton")){
; 		SendInput {Click Left up}
; 		wasHold := true
; 	}
; 	if (GetKeyState("Shift")){
; 		wasShift := true
; 	}
; 	SendInput, ww4
; 	Click Left
; 	if (wasHold == true){
; 		; sleep, 500
; 		if (wasShift == true){
; 			SendInput {Shift down}{Click left down}
; 		} else {
; 			SendInput {Click left down}
; 		}
; 	}
; return



$`::
	if (GetKeyState("LButton") == true){
		Click left up
	}
	SetDefaultMouseSpeed, 0
	MouseGetPos, startX, startY
	SendInput, ww1
	BlockInput, MouseMove
	Click, 0, 125
	Sleep 10
	MouseMove, startX, startY
	BlockInput, MouseMoveOff
return

$+`::
	if (GetKeyState("LButton") == true){
		Click left up
	}
	SetDefaultMouseSpeed, 0
	MouseGetPos, startX, startY
	SendInput, ww1
	BlockInput, MouseMove
	Click, left, 0, 173
	Sleep 10
	MouseMove, startX, startY
	BlockInput, MouseMoveOff
return

$+1::
	wasHold := false
	wasShift := false
	if (GetKeyState("LButton")){
		SendInput {Click Left up}
		wasHold := true
	}
	if (GetKeyState("Shift")){
		wasShift := true
	}
	SendInput, ww1
	Click Right
	if (wasHold == true){
		; sleep, 500
		if (wasShift == true){
			SendInput {Shift down}{Click left down}
		} else {
			SendInput {Click left down}
		}
	}
return
$Tab::

	BlockInput, on
	wasHold := false
	wasShift := false


	if (GetKeyState("LButton")){
		; SendInput {Click Left up}
		wasHold := true
	}
	if (GetKeyState("Shift")){
		wasShift := true
	}
	SendInput, ww1
	SetDefaultMouseSpeed, 0
	MouseGetPos, startX, startY
	Click, 30, 30
	MouseMove, startX, startY
	BlockInput, off
	if (wasHold == true){
		; sleep, 500
		if (wasShift == true){
			SendInput {Shift down}{Click left down}
		} else {
			SendInput {Click left down}
		}
	}
return
$+Tab::
	BlockInput, on
	wasHold := false
	wasShift := false


	if (GetKeyState("LButton")){
		; SendInput {Click Left up}
		wasHold := true
	}
	if (GetKeyState("Shift")){
		wasShift := true
	}
	SendInput, ww1
	SetDefaultMouseSpeed, 0
	MouseGetPos, startX, startY
	Click, 30, 30
	MouseMove, startX, startY
	BlockInput, off
	if (wasHold == true){
		; sleep, 500
		if (wasShift == true){
			SendInput {Shift down}{Click left down}
		} else {
			SendInput {Click left down}
		}
	}
return

$6::
	wasHold := false
	wasShift := false
	if (GetKeyState("LButton")){
		SendInput {Click Left up}
		wasHold := true
	}
	if (GetKeyState("Shift")){
		wasShift := true
	}
	SendInput, ww6
	Click Right
	if (wasHold == true){
		; sleep, 500
		if (wasShift == true){
			SendInput {Shift down}{Click left down}
		} else {
			SendInput {Click left down}
		}
	}
return

$+6::
	wasHold := false
	wasShift := false
	if (GetKeyState("LButton")){
		SendInput {Click Left up}
		wasHold := true
	}
	if (GetKeyState("Shift")){
		wasShift := true
	}
	SendInput, ww6
	Click Right
	if (wasHold == true){
		; sleep, 500
		if (wasShift == true){
			SendInput {Shift down}{Click left down}
		} else {
			SendInput {Click left down}
		}
	}
return

$d::
	wasHold := false
	wasShift := false
	if (GetKeyState("LButton")){
		SendInput {Click Left up}
		wasHold := true
	}
	if (GetKeyState("Shift")){
		wasShift := true
	}
	SendInput, wwd
	Click Right
	if (wasHold == true){
		; sleep, 500
		if (wasShift == true){
			SendInput {Shift down}{Click left down}
		} else {
			SendInput {Click left down}
		}
	}
return

$+d::
	wasHold := false
	wasShift := false
	if (GetKeyState("LButton")){
		SendInput {Click Left up}
		wasHold := true
	}
	if (GetKeyState("Shift")){
		wasShift := true
	}
	SendInput, wwd
	Click Right
	if (wasHold == true){
		; sleep, 500
		if (wasShift == true){
			SendInput {Shift down}{Click left down}
		} else {
			SendInput {Click left down}
		}
	}
return
; $q::
; 	wasHold := false
; 	wasShift := false
; 	if (GetKeyState("LButton")){
; 		SendInput {Click Left up}
; 		wasHold := true
; 	}
; 	if (GetKeyState("Shift")){
; 		wasShift := true
; 	}
; 	SendInput, wwq
; 	Click Left
; 	if (wasHold == true){
; 		; sleep, 500
; 		if (wasShift == true){
; 			SendInput {Shift down}{Click left down}
; 		} else {
; 			SendInput {Click left down}
; 		}
; 	}
; return

; $+q::
; 	wasHold := false
; 	wasShift := false
; 	if (GetKeyState("LButton")){
; 		SendInput {Click Left up}
; 		wasHold := true
; 	}
; 	if (GetKeyState("Shift")){
; 		wasShift := true
; 	}
; 	SendInput, wwq
; 	Click Left
; 	if (wasHold == true){
; 		; sleep, 500
; 		if (wasShift == true){
; 			SendInput {Shift down}{Click left down}
; 		} else {
; 			SendInput {Click left down}
; 		}
; 	}
; return




Button_Pressed:
if (WinActive("Titan Quest") || WinActive("Titan Quest: Immortal Throne") || true)
{	
	shiftKey := false
	if (GetKeyState("Shift")){			
		shiftKey := true
	}



	; if GetKeyState("1")ww1
	; {
	; 	if (sh
	; 	
	; 		SendInput, ww
	; 		SendInput {shift down}
	; 	}
	; 	SendInput, {Tab}
	; 	Click Left down
	; 	Sleep, 100
	; 	Click Left up
	; }



	; if GetKeyState("2")
	; {
	; 	if (sh
	; 	
	; 		SendInput, ww
	; 		SendInput {shift down}
	; 	}
	; 	SendInput, {~}
	; 	Click Left down
	; 	Sleep, 700
	; 	Click Left up

	; }


	; if (GetKeyState("3") && pressed3 == false)
	; {
	; 	pressed3 == true
	; 	if (sh
	; 	
	; 		SendInput, ww
	; 		SendInput {shift down}
	; 	}
	; 	Click Left down
	; 	Sleep, 100
	; 	Click Left up
	; }
	; if (GetKeyState("3") == false){
	; 	pressed3 := false
	; }



	if GetKeyState("4")
	{
		; SendInput, 4
		; Click Left down
		; Sleep, 100
		; Click Left up
	}



	; if ( GetKeyState("Tab") && tabPressed == false){
	; 	tabPressed := true

	; 	if (GetKeyState("LButton") == true){
	; 		Click left up
	; 	}

	; 	MouseGetPos, startX, startY
	; 	Send {1}
	; 	if		
	; 	
	; 		SendInput, ww
	; 		SendInput {shift down}
	; 	}
	; 	BlockInput, MouseMove
	; 	Click, left, 0, 173
	; 	Sleep 50
	; 	MouseMove, startX, startY
	; 	BlockInput, MouseMoveOff

	; }
	; if (GetKeyState("Tab") == false){
	; 	tabPressed := false
	; }
	


	; if ( GetKeyState("~") && ePressed == false){
	; 	ePressed := true
	; 	if (GetKeyState("LButton") == true){
	; 		Click left up
	; 	}

	; 	MouseGetPos, startX, startY
	; 	Send {1}
	; 	if		
	; 	
	; 		SendInput, ww
	; 		SendInput {shift down}
	; 	}
	; 	BlockInput, MouseMove
	; 	Click, left, 0, 133
	; 	Sleep 50
	; 	MouseMove, startX, startY
	; 	BlockInput, MouseMoveOff

	; }
	; if (GetKeyState("~") == false){
	; 	ePressed := false
	; }
}
return

return