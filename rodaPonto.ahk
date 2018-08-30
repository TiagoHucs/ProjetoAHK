#include validar.ahk

Run http://172.24.124.26:8080/ponto/usuarios/login
sleep 1000

encontrou:= validarTela("Bem vindo ao Ponto WEB")

	if encontrou=true
	{
		sleep 500
		send {TAB}
		sleep 500
		send {TAB}
		sleep 500
		send {TAB}
		sleep 500
		send {TAB}
		sleep 500
		send deinf.hucs
		sleep 500
		send {TAB}
		sleep 500
		send Tponto
		sleep 500
		send {ENTER}
	}
	else
	{
		msgbox nao identifiquei o texto "Bem vindo ao Ponto WEB"
	}