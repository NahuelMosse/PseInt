Proceso main
	
	// Dado un número de cuatro cifras hacer un algoritmo que lo descomponga en unidad, decena, centena y unidad de mil.
	//Ingreso de datos
	definir num Como Real;
	Escribir "Ingresar un numero de 4 digitos";
	Leer num;
	//comprobacion
	si num < 10000 Y num > 999 Entonces
		Escribir "";
	SiNo
		Repetir
			Escribir "Ingresar un numero de 4 digitos";
			Leer num;
		Hasta Que num < 10000 Y num > 999;
	FinSi
	//calculo
	Definir unidadesDeMil, centenas, decenas, unidades Como Real;
	unidadesDeMil = trunc( num / 1000 );
	centenas = trunc( num / 100 ) - unidadesDeMil * 10;
	decenas = trunc( num / 10 ) - unidadesDeMil * 100 - centenas * 10;
	unidades = trunc( num ) - unidadesDeMil * 1000 - centenas * 100 - decenas * 10;
	Escribir "Las unidades son: ",unidades;
	Escribir "Las decenas son: ",decenas;
	Escribir "Las centenas son: ",centenas;
	Escribir "Las unidades de mil son: ",unidades;
	
FinProceso