#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

digitar(texto){
txt= enviando %texto% 
salvaLog(txt)
sleep 500
send %texto%
sleep 500
txt= %texto% enviado com sucesso
salvaLog(txt)
}