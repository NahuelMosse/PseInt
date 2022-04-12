Proceso main
	
	// Constantes
	Definir PRECIODOLAR Como Real
	PRECIODOLAR = 200
	
	// Variables
	Definir apellido, nombre, hotel, continuar, pension Como Caracter
	Definir numReserva, estrellas,  dias, personas Como Entero
	Definir precio Como Real
	
	// Contador
	Definir cantReservas, cantReservas10Dias8Pesonas Como Entero
	Definir cantReservas1Estrella, cantReservas2Estrellas, cantReservas3Estrellas, cantReservas4Estrellas, cantReservas5Estrellas Como Entero
	cantReservas = 0
	cantReservas10Dias8Pesonas = 0
	cantReservas1Estrella = 0
	cantReservas2Estrellas = 0
	cantReservas3Estrellas = 0
	cantReservas4Estrellas  = 0
	cantReservas5Estrellas = 0
	
	Repetir
		
 		// Ingreso de datos
		Escribir "Ingrese su numero de reserva"
		Leer numReserva
		Escribir "Ingrese el nombre del titular de la reserva"
		Leer nombre
		Escribir "Ingrese el apellido del titular de la reserva"
		Leer apellido
		Escribir "Ingrese el nombre del hotel"
		Leer hotel
		Repetir
			Escribir "Ingrese la cantidad de estrellas de estrellas del hotel (1 a 5)"
			Leer estrellas
		Hasta Que estrellas >= 1 Y estrellas <= 5
		Repetir
			Escribir "Ingrese la cantidad de dias de hospedaje"
			Leer dias
		Hasta Que dias > 0
		Repetir
			Escribir "Ingrese la cantidad de personas (maximo 8)"
			Leer personas
		Hasta Que personas > 0 Y personas <= 8
		Repetir
			Escribir "Que tipo de pension prefiere: "
			Escribir "  [D]   [1/2]   [PC]   [A]"
			Leer pension
		Hasta Que pension = "D" O pension = "d" O pension = "1/2" O pension = "PC" O pension = "pc" O pension = "A" O pension = "a"
		
		// Salto de linea
		Escribir ""
		
		// Muestra de datos
		Escribir "*****************************"
		
		Escribir "Nro reserva: ",numReserva
		Escribir "Nombre y apellido titular: ",nombre," ",apellido
		Escribir "Hotel: ",hotel
		Escribir "Estrellas: ",estrellas
		Escribir "Dias: ",dias
		Escribir "Personas: ",personas
		Escribir "Pension: ",pension
		
		// Salto de linea
		Escribir ""
		
		// Precio
		Segun estrellas Hacer
			1:
				precio = 800
			2:
				precio = 1500
			3:
				precio = 2200
			4:
				precio = 3000
			De Otro Modo:
				precio = 3700
		Fin Segun
		
		si pension = "1/2" Entonces
			precio = precio * 1.3
		SiNo
			si pension = "PC" O pension = "pc" Entonces
				precio = precio * 1.5
			SiNo
				si pension = "A" O pension = "a" Entonces
					precio = precio * 1.8
				FinSi
			FinSi
		FinSi
		
		si dias > 15 Y estrellas >= 3 Y estrellas <= 4 Entonces
			precio = precio * 0.9
		FinSi
		
		Escribir "Precio: ARS",precio
		Escribir "Precio: USD",precio/PRECIODOLAR
		
		Escribir "*****************************"
		
		// Salto de linea
		Escribir ""
		
		// Siguiente paciente
		Escribir "¿Hay mas datos para cargar? [s/n]"
		Leer continuar
		
		// Contadores
		cantReservas = cantReservas + 1
		
		si dias > 10 Y personas = 8 Entonces
			cantReservas10Dias8Pesonas = cantReservas10Dias8Pesonas +1
		FinSi
		
		Segun estrellas Hacer
			1:
				cantReservas1Estrella = cantReservas1Estrella + 1
			2:
				cantReservas2Estrellas = cantReservas2Estrellas + 1
			3:
				cantReservas3Estrellas = cantReservas3Estrellas + 1
			4:
				cantReservas4Estrellas  = cantReservas4Estrellas + 1
			De Otro Modo:
				cantReservas5Estrellas = cantReservas5Estrellas + 1
		Fin Segun
		
	Hasta Que continuar = "n" O continuar = "N"
	
	// Salto de linea
	Escribir ""
	
	// Cantidad de reservas
	Escribir "Se registraron ",cantReservas," reservas"
	Escribir "Se registraron ",cantReservas10Dias8Pesonas," reservas de 8 personas con mas de 10 dias"
	
FinProceso
