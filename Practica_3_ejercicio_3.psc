Proceso main
	
	//Diagramar un algoritmo que lea dos datos numéricos que representan 
	//la cantidad de varones y la cantidad de mujeres de un curso, e imprima por pantalla:
		//a)	cantidad total de alumnos del curso
		//b)	porcentaje de mujeres y porcentaje de varones 
	
	//Ingreso de datos
	Definir cantVarones, cantMujeres Como Entero;
	Escribir "Ingrese cantidad de varones";
	Leer cantVarones;
	Escribir "Ingrese cantidad de mujeres";
	Leer cantMujeres;
	//Calculos
	Definir totalAlumnos Como Entero;
	totalAlumnos = cantMujeres + cantVarones;
	//Salida de datos
	Escribir "El curso tiene ",totalAlumnos," alumnos";
	Escribir "El curso tiene ",cantVarones*100/totalAlumnos,"% de varones";
	Escribir "El curso tiene ",cantMujeres*100/totalAlumnos,"% de mujeres";
	
FinProceso
