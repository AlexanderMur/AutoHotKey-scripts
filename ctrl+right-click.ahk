#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force
wasClick := 0

$RButton::
	wasClick := 0
	SendInput, {Ctrl Down}
	KeyWait, RButton
	SendInput, {Ctrl Up}
	If (!wasClick){
		SendInput, {RButton}	
	}
	wasClick := 0
return


~LButton::
	KeyWait, LButton	
	wasClick := 1
return


::btw::by the way 