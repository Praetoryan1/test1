//Escribir un programa que procese una secuencia de caracteres ingresada por teclado y
//terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera:
//	cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres
//	(incluyendo a las vocales acentuadas) se mantienen sin cambios.
//	
//	a e i o u
//	@ # $ % *
//	
//	Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación
//	correspondiente. Utilice la estructura "según" para la transformación.
//	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
//		La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
//		NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.
Algoritmo Guia3Ej9
	Definir frase Como Caracter
	Escribir "Ingrese una frase"
	Leer frase
	Hacer
		Escribir "Ingrese el punto al final de la frase"
		Leer frase
		
	Mientras Que Subcadena(frase, Longitud(frase)-1, Longitud(frase)-1) <> "."
	reemplazo(frase)
	Escribir "", frase
FinAlgoritmo
SubProceso reemplazo(frase Por Referencia)
	Definir cambio Como Caracter
	Definir i Como Entero
	cambio = ""
	Para i = 0 Hasta Longitud(frase) Con Paso 1 Hacer
		Segun Subcadena(frase, i, i) Hacer
			"a": 
				cambio = concatenar(cambio,"@")
			"e":
				cambio = concatenar(cambio,"#")
			"i":
				cambio = concatenar(cambio,"$") 
			"o" :
				cambio = concatenar(cambio,"%")
			"u" :
				cambio = concatenar(cambio, "*")
				
			De Otro Modo:
				cambio = Concatenar(cambio, Subcadena(frase, i, i))
		FinSegun
	Fin Para
	frase = cambio
	FinSubProceso
	