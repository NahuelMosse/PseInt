Proceso main
	
	// Ingreso de carta
	Definir palo como caracter;
	Definir val como entero;
	Escribir "Ingrese el palo de la carta";
	Escribir "[b] Basto";
	Escribir "[e] Espada";
	Escribir "[c] Copa";
	Escribir "[o] Oro";
	leer palo;
	si palo = "b" O palo = "e" O palo = "c" O palo = "o" entonces
		Escribir "";
	SiNo
		Repetir
			Escribir "Ingrese el palo de la carta";
			Escribir "[b] Basto";
			Escribir "[e] Espada";
			Escribir "[c] Copa";
			Escribir "[o] Oro";
			leer palo;
		Hasta Que palo = "b" O palo = "e" O palo = "c" O palo = "o"
	FinSi
	Escribir "Ingrese el valor de la carta, desde el 1 al 12";
	leer val;
	si val < 1 O val > 12 entonces
		Repetir
			Escribir "Ingrese el valor de la carta, desde el 1 al 12";
			leer val;
		Hasta Que val >= 1 O val <= 12
	FinSi
	
	//Apilamiento
	// 1)
	si palo = "b" entonces
		Escribir "Poner la carta en la pila de Bastos";
	SiNo
		Escribir "Poner la carta en la pila de Restantes";
	FinSi
	
	// 2)
	si palo = "b" Entonces
		Escribir "Poner la carta en la pila de Bastos";
	FinSi
	si palo = "e" Entonces
		Escribir "Poner la carta en la pila de Espadas";
	FinSi
	si palo = "c" Entonces
		Escribir "Poner la carta en la pila de Copas";
	FinSi
	si palo = "o" Entonces
		Escribir "Poner la carta en la pila de Oros";
	FinSi
	si val = 1 Entonces
		Escribir "Poner la carta en la pila de ases";
	FinSi
	
	// 3)
	si palo = "c" Y val % 2 = 0 Entonces
		Escribir "Poner la carta en la pila de copas pares";
	SiNo
		Escribir "Poner la carta en la pila de restantes";
	FinSi
	
	// 4)
	si palo = "o" Y val % 2 = 0 Entonces
		Escribir "Poner la carta en la pila de oros pares";
	SiNo
		si palo = "o" Y val % 2 = 1 Entonces
			Escribir "Poner la carta en la pila de oros inpares";
		SiNo
			Escribir "Poner la carta en la pila de restantes";
		FinSi
	FinSi
	
	// 5)
	si palo = "o" O (palo = "c" Y val % 2 = 0) Entonces
		Escribir "Poner la carta en la pila de oros y copas pares";
	SiNo
		si palo = "b" O (palo = "e" Y val % 2 = 0) Entonces
			Escribir "Poner la carta en la pila de bastos y espadas pares";
		SiNo
			si val % 2 = 1 Entonces
				Escribir "Poner la carta en la pila de numeros impares";
			FinSi
		FinSi
	FinSi
	
FinProceso
