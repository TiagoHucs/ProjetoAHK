#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

printar(){
sleep 500
salvaLog("Vou printar o step")
run %A_ScriptDir%\system\i_view32.exe /capture=2 /convert=%A_ScriptDir%\capturas\%A_Now%.jpg
salvaLog("Printei o step")
sleep 500
}