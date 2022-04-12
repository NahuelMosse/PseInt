Proceso main
	// Ingresar los 3 lados (consideramos que los lados ingresados son enteros)
	Definir A,B,C Como Entero
	Escribir 'Ingrese el lado mas largo'
	Leer A
	Escribir 'Ingrese el lado intermedio'
	Leer B
	Escribir 'Ingrese el lado mas corto'
	Leer C
	// ¿es un triangulo?
	Si A<(B+C) Entonces
		// ¿es Triangulo equilatero?
		Si A=B Y B=C Y C=A Entonces
			Escribir 'El triangulo formado es equilatero'
		SiNo
			// ¿es triangulo isoceles?
			Si A=B O B=C O C=A Entonces
				Escribir 'El triangulo formado es isoceles'
			SiNo
				// Por descarte es escaleno
				Escribir 'El triangulo formado es escaleno'
			FinSi
		FinSi
	SiNo
		Escribir 'No se formo un triangulo'
	FinSi
FinProceso
