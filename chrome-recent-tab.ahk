#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force


; скрипт для https://chrome.google.com/webstore/detail/clut-cycle-last-used-tabs/cobieddmkhhnbeldhncnfcgcaccmehgn
; нажимать ctrl+s когда нажимаешь Назад на мышке

#IfWinActive, ahk_exe chrome.exe
XButton1::
    SendInput, {Alt down}
    SendInput, {s}
    SendInput, {Alt up}
    return
+XButton1::
    SendInput, {Alt down}
    Sleep, 100
    SendInput, {Shift down}
    SendInput, {s}
    SendInput, {Alt up}
    SendInput, {Shift up}
    return
