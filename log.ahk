#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

FileDelete %A_ScriptDir%\logs\log.txt
FileDelete %A_ScriptDir%\capturas\*.*

salvaLog(vTexto){
FileCreateDir, %A_ScriptDir%\logs\
FileAppend, [%A_Now%]- %vTexto%`n, %A_ScriptDir%\logs\log.txt
}


finalizaLog(testecase){
sleep 200
FileCreateDir %A_ScriptDir%\evidencias\%testecase%\
sleep 200
FileCopy %A_ScriptDir%\logs\log.txt, %A_ScriptDir%\evidencias\%testecase%\%testecase%.txt
sleep 200
FileCopy %A_ScriptDir%\capturas\*.*, %A_ScriptDir%\evidencias\%testecase%
sleep 200
run %A_ScriptDir%\evidencias\%testecase%\%testecase%.txt
}


