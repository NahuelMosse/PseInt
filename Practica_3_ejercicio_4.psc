Proceso main
	
	//Hacer un algoritmo que calcule e informe el tiempo transcurrido en minutos entre 
	//la hora de salida y la hora de llegada de un participante de una carrera ambas 
	//expresadas en horas:minutos ( ya validadas), de un mismo día
	
	//Ingreso de datos
	Definir horaSalida, minutoSalida, horaLlegada, minutoLlegada Como Entero;
	Escribir "Ingrese la hora la hora de salida, sin icluir los minutos";
	Leer horaSalida;
	Escribir "Ingrese el minuto que no se ingreso en el paso anterior";
	Leer minutoSalida;
	Escribir "Ingrese la hora la hora de llegada sin icluir los minutos";
	Leer horaLlegada;
	Escribir "Ingrese el minuto que no se ingreso en el paso anterior";
	Leer minutoLlegada;
	
	//Salida y calculo de datos
	Escribir "Su viaje duro ",horaLlegada - horaSalida,":",minutoLlegada - minutoSalida,"hs";
	
FinProceso
