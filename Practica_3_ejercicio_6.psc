Proceso main
	
	//Dada una palabra que se ingresará por teclado de 12 caracteres 
	//(Ejemplo PROGRAMACION):
	//1)	Mostrar cadad carácter que compone la palabra
	//2)	Convertir y mostrar la palabra en formato de nombre propio 
	//(la primera letra en maýúsculas y el resto n minúsculas)
	//3)	Convertir y mostrar la palabra con el siguiente formato: 
	//4 letras - 4 letras - 4 letras (Ejemplo PROG-RAMA-CION)
	
	//Ingreso de datos
	Definir palabra Como Caracter;
	Escribir "Ingrese una palabra de 12 caracteres";
	Leer palabra;
	Si Longitud(palabra) = 12 Entonces
		Escribir "";
	SiNo
		Repetir
			Escribir "Ingrese una palabra de 12 caracteres";
			Leer palabra;
		Hasta Que Longitud(palabra) = 12
	Fin Si
	
	//Separar en caracteres
	Definir i Como Entero;
	i = 0;
	Definir letra, formatoNombre, formato4Letras Como Caracter;
	formatoNombre = "";
	formato4Letras = "";
	
	Mientras i < 12 Hacer
		// Escribe las letras por separado
		letra = SubCadena(palabra,i,i);
		Escribir letra;
		
		// arma el formato de nombre
		si i = 0 Entonces
			formatoNombre = Concatenar(formatoNombre,Mayusculas(letra));
		SiNo
			formatoNombre = Concatenar(formatoNombre,Minusculas(letra));
		FinSi
		
		// arma el formato 4 letras - 4 letras - 4 letras
		formato4Letras = Concatenar(formato4Letras,letra);
		si i = 3 O i = 7 Entonces
			formato4Letras = Concatenar(formato4Letras,"-");
		FinSi
		
		i = i + 1;
	Fin Mientras
	
	Escribir formatoNombre;
	Escribir formato4Letras;
	
FinProceso
