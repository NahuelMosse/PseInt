Proceso main
	
	// Entradas
	Definir nota1, nota2, nota3 Como Entero;
	Escribir "Ingrese la primer nota";
	Leer nota1;
	Escribir "Ingrese la segunda nota";
	Leer nota2;
	Escribir "Ingrese la tercer nota";
	Leer nota3;
	
	// Salida
	si ( (nota1 + nota2 + nota3) / 3) >= 4 Entonces
		Escribir "Usted esta aprobado";
	SiNo
		Escribir "Usted esta desaprobado";
	FinSi
	
FinProceso