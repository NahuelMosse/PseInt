Proceso main
	
	Definir nCorredor, tiempoEtapa1, tiempoEtapa2, tiempoEtapa3, tiempoEtapa4, tiempoEtapa5, tiempoTotal Como Entero
	Definir nombre Como Caracter
	
	Escribir "Ingrese su nombre"
	Leer nombre
	Escribir "ingrese su numero de corredor"
	Leer nCorredor
	Escribir "tiempo en minutos para la etapa 1"
	Escribir "Aclaracion : en caso de no haberla realizado ingresar 0"
	Leer tiempoEtapa1
	Escribir "tiempo en minutos para la etapa 2"
	Escribir "Aclaracion : en caso de no haberla realizado ingresar 0"
	Leer tiempoEtapa2
	Escribir "tiempo en minutos para la etapa 3"
	Escribir "Aclaracion : en caso de no haberla realizado ingresar 0"
	Leer tiempoEtapa3
	Escribir "tiempo en minutos para la etapa 4"
	Escribir "Aclaracion : en caso de no haberla realizado ingresar 0"
	Leer tiempoEtapa4
	Escribir "tiempo en minutos para la etapa 5"
	Escribir "Aclaracion : en caso de no haberla realizado ingresar 0"
	Leer tiempoEtapa5
	
	tiempoTotal = tiempoEtapa1 + tiempoEtapa2 + tiempoEtapa3 + tiempoEtapa4 + tiempoEtapa5
	si tiempoEtapa1 = 0 Entonces
		tiempoTotal = tiempoTotal + 280
	FinSi
	si tiempoEtapa2 = 0 Entonces
		tiempoTotal = tiempoTotal + 280
	FinSi
	si tiempoEtapa3 = 0 Entonces
		tiempoTotal = tiempoTotal + 280
	FinSi
	si tiempoEtapa4 = 0 Entonces
		tiempoTotal = tiempoTotal + 280
	FinSi
	si tiempoEtapa5 = 0 Entonces
		tiempoTotal = tiempoTotal + 280
	FinSi
	si tiempoEtapa1 = 0 Y tiempoEtapa2 = 0 Y tiempoEtapa3 = 0 Y tiempoEtapa4 = 0 Y tiempoEtapa5 = 0 Entonces
		tiempoTotal = tiempoTotal * 1.2
	FinSi
	
	Escribir "Usted realizo las 5 etapas en ",tiempoTotal," minutos"
	
FinProceso
