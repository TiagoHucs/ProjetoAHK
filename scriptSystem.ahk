#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\system\aguardaJanela.ahk
#Include %A_ScriptDir%\system\printScript.ahk
#Include %A_ScriptDir%\system\log.ahk
#Include %A_ScriptDir%\system\digitar.ahk
#Include %A_ScriptDir%\system\validar.ahk