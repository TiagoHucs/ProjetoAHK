#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



	validarTela(trecho){

		sleep 200
		send {CTRLDOWN}a{CTRLUP}
		sleep 200
		send {CTRLDOWN}c{CTRLUP}
		sleep 200

		encontrou = 0

		Haystack = %clipboard%
		Needle = %trecho%
		IfInString, Haystack, %Needle%
		{
			;MsgBox, palavra encontrada.
			encontrou = true
		}
		else
		{
			;MsgBox, palavra nao encontrada.
			encontrou = false
		}

		return encontrou
	}
	
	aguardaJanela(WinTitle){
	
		SetTitleMatchMode, 2
		SetTitleMatchMode, slow

		WinWait, %WinTitle%, ,2
		IfWinNotActive, %WinTitle%.exe, , WinActivate, %WinTitle%.exe, 
		WinWaitActive, %WinTitle%.exe, 
	}
	