Proceso main
	
	Definir nombre, apellido, seccion, turno, diaSemana Como Caracter
	Definir horasTrabajadas Como real
	Definir nLegajo Como Entero
	
	Escribir "Bienvenido a la calculadora de sueldo diario"
	Escribir "Ingrese su nombre"
	Leer nombre
	Escribir "Ingrese su apellido"
	Leer apellido
	Escribir "Ingrese su numero de legajo"
	Leer nLegajo
	Escribir "Igrese la seccion en la que trabaja"
	Leer seccion
	Repetir
		Escribir "Ingrese el dia de la semana a calcular"
		Escribir "Aclaracion : ingrese el nombre completo y sin acentos, por ejemplo: lunes"
		Leer diaSemana
		diaSemana = Minusculas(diaSemana)
	Hasta Que diaSemana = "lunes" O diaSemana = "martes" O diaSemana = "miercoles" O diaSemana = "jueves" O diaSemana = "viernes" O diaSemana = "sabado" O diaSemana = "domingo"
	Repetir
		Escribir "Ingrese el turno en que trabaja ese dia"
		Escribir "[diurno]"
		Escribir "[nocturno]"
		Leer turno
		turno = Minusculas(turno)
	Hasta Que turno = "diurno" O turno = "nocturno"
	Escribir "Ingrese las horas que trabaja ese dia"
	Leer horasTrabajadas
	
	si diaSemana <> "sabado" Y diaSemana <> "domingo" Entonces
		si turno = "diurno" Entonces
			Escribir "Usted el dia ",diaSemana," cobra $",5 * horasTrabajadas
		SiNo
			Escribir "Usted el dia ",diaSemana," cobra $",8 * horasTrabajadas
		FinSi
	SiNo
		Escribir diaSemana
		si turno = "diurno" Entonces
			Escribir "Usted el dia ",diaSemana," cobra $",(5 + 2) * horasTrabajadas
		SiNo
			Escribir "Usted el dia ",diaSemana," cobra $",(8 + 3) * horasTrabajadas
		FinSi
	FinSi
	
FinProceso
