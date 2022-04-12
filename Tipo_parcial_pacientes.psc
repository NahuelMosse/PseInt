Proceso main
	
	Definir apellido, nombre, continuar Como Caracter
	Definir peso, altura, IMC Como Real
	Definir edad, paciente Como Entero
	
	paciente = 0
	
	Repetir
		
		// Ingreso de datos
		Escribir "Ingrese su nombre"
		Leer nombre
		Escribir "Ingrese su apellido"
		Leer apellido
		Escribir "edad"
		Leer edad
		Escribir "Ingrese su peso"
		Leer peso
		Escribir "Ingrese su altura en metros"
		Leer altura
		
		// Salto de linea
		Escribir ""
		
		// Muestra de datos
		Escribir "*****************************"
		
		// Nro paciente
		paciente = paciente + 1
		Escribir "Paciente: ",paciente
		
		Escribir "Nombre: ",nombre
		Escribir "Apellido: ",apellido
		Escribir "Edad: ",edad
		Escribir "Peso: ",peso
		Escribir "Altura: ",altura
		
		// Indice de masa corporal
		IMC = peso / (altura)^2
		Escribir "IMC: ",IMC
		
		// Categoria
		si edad < 30 Y altura <= 170 Entonces
			Escribir "Categoria: A1"
		SiNo
			si edad < 30 Y altura > 170 Entonces
				Escribir "Categoria: A2"
			SiNo
				si edad >= 30 Y edad < 40 Y altura <= 180 Entonces
					Escribir "Categoria: C1"
				SiNo
					si edad >= 30 Y edad < 40 Y altura > 180 Entonces
						Escribir "Categoria: C2"
					SiNo
						Escribir "Categoria: D"
					FinSi
				FinSi
			FinSi
		FinSi
		
		si IMC < 20 Entonces
			Escribir "Situacion: Delgado"
		SiNo
			si IMC >= 20 Y IMC < 25 Entonces
				Escribir "Situacion: Normal"
			SiNo
				si IMC >= 25 Y IMC < 30 Entonces
					Escribir "Situacion: Sobrepeso"
				SiNo
					Escribir "Situacion: Obeso"
				FinSi
			FinSi
		FinSi
		
		Escribir "*****************************"
		
		// Salto de linea
		Escribir ""
		
		// Siguiente paciente
		Escribir "¿Hay pacientes para cargar? [s/n]"
		leer continuar
		
		// Salto de linea
		Escribir ""
		
	Hasta Que continuar = "n" O continuar = "N"
	
FinProceso
