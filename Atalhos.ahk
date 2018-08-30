
;tecla de acesso é a Win+N 
#n::Run Notepad++

;tecla de acesso é a CTRL+ALT+C:
^!c::Run calc.exe

;tecla de acesso é escrevet btw:
::btw::by the way

::vc::você

::pf::por favor

::fds::fim de semana

::vdd::verdade

::qq::qualquer

:R*?:dataatual::
FormatTime, CurrentDateTime,, dd/MM/yy
SendInput %CurrentDateTime%
return

:R*?:hucs@::
FormatTime, CurrentDateTime,, dd/MM/yy
SendInput tiagohucs@gmail.com
return

