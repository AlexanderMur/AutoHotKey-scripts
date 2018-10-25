#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force

wasClick := 0

*~WheelUp::
*~WheelDown::
*~LButton::
	wasClick := 1
return

$RButton::
	wasClick := 0
	start := A_TickCount
	SendInput, {Ctrl Down}
	KeyWait, RButton
	SendInput, {Ctrl Up}
	time := A_TickCount - start
	If (!wasClick && time <= 800){
		SendInput, {RButton}	
	}
	wasClick := 0
return


