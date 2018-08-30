#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include SoundScript.ahk


TrayTip, Eva, Eva esta ativa agora`..., 20, 17



; Create the popup menu by adding some items to it.
Menu, MyMenu, Add, Item1, MenuHandler
Menu, MyMenu, Add, Item2, MenuHandler
Menu, MyMenu, Add  ; Add a separator line.

; Create another menu destined to become a submenu of the above menu.
Menu, Submenu1, Add, IntelliJ, MenuHandler
Menu, Submenu1, Add, VsCode, MenuHandler

; Create a submenu in the first menu (a right-arrow indicator). When the user selects it, the second menu is displayed.
Menu, MyMenu, Add, Workbenc, :Submenu1

Menu, MyMenu, Add  ; Add a separator line below the submenu.
Menu, MyMenu, Add, Item3, MenuHandler  ; Add another menu item beneath the submenu.
return  ; End of script's auto-execute section.

MenuHandler:
MsgBox You selected %A_ThisMenuItem% from the menu %A_ThisMenu%.
return



CoordMode, Caret, Screen

::th@::
send tiagohucs@gmail.com
return

::vc::você

::att::atênciosamente

::pf::por favor

::fds::fim de semana

::vdd::verdade

::qq::qualquer

::dataatual::
FormatTime, CurrentDateTime,, dd/MM/yy
SendInput %CurrentDateTime%
return

::abreVsCode::
run D:/workbench/linkbench/scripts/guitools/vscode.bat
return

::abreIntelliJ::
run D:\workbench\linkbench\scripts\guitools\idea.bat
return



#z::Menu, MyMenu, Show  ; i.e. press the Win-Z hotkey to show the menu.

#x::
minhaFuncao()
return


#f::
playSound()
return

minhaFuncao()
{
	msgbox minhaFuncao
}
