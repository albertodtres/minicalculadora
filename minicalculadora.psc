SubProceso menu
	Escribir "======= Selecciona una opción ========"
	Escribir "| 1 - Suma                           |"
	Escribir "| 2 - Resta                          |"
	Escribir "| 3 - Multiplicacion                 |"
	Escribir "| 4 - Division                       |"
	Escribir "| 5 - Ecuacion 1º Grado              |"
	Escribir "| 6 - Ecuacion 2º Grado              |"
	Escribir "======================================"
FinSubProceso

SubProceso resultado <- suma(a,b)
	resultado <- a + b
	Escribir "La suma es " resultado
FinSubProceso

SubProceso resultado <- resta (a,b)
	resultado <- a - b
	Escribir "La resta es " resultado;
FinSubProceso

SubProceso resultado <- multiplicacion (a,b)
	resultado <- a * b
	Escribir "La multiplicacion es " resultado;
FinSubProceso

SubProceso resultado <- division (a,b)
	resultado <- a / b
	Escribir "La division es " resultado;
FinSubProceso

SubProceso resultado <- primergrado (a,b)
	resultado <- -b / a
	Escribir "La X vale " resultado;
FinSubProceso

SubProceso resultado <- segundogrado (a,b,c)
	
	cuenta = (b^2 - 4 * a * c)
	
	Si cuenta >= 0 Entonces
		ra_iz = raiz (cuenta)
		Si a = 0 Entonces
			Escribir "No se puede dividir entre 0"
		SiNo
			x1 = (-b + ra_iz) / (2 * a) 
			x2 = (-b - ra_iz) / (2 * a)
			Escribir "Los resultados son: " x1 " y " x2
		Fin Si
	SiNo
		Escribir "No se puede hacer la raiz de un negativo"
	Fin Si
FinSubProceso



Algoritmo principal 
	Definir a,b,c, teclado, bucle Como Entero
	bucle <- 1
	Mientras bucle = 1 Hacer
		menu
		leer teclado
		Limpiar Pantalla
		Si teclado = 6 Entonces
			Escribir "Introduce el valor A"
			leer a
			Escribir "Introduce el valor B"
			leer b
			Escribir "Introduce el valor C"
			leer c
		SiNo
			Escribir "Introduce el valor A"
			leer a
			Escribir "Introduce el valor B"
			leer b
		Fin Si
		Segun teclado Hacer
			1:
				resultado <- suma(a,b)
			2:
				resultado <- resta (a,b)
			3:
				resultado <- multiplicacion (a,b)
			4: 
				resultado <- division (a,b)
			5:
				resultado <- resultado <- primergrado (a,b)
			6:
				resultado <- segundogrado (a,b,c)
			De Otro Modo:
				Escribir "Debes introducir una opción válida"
		FinSegun
		
		Escribir "======= Selecciona una opción ========"
		Escribir "| ¿Desea realizar otra operación?    |"
		Escribir "| 1 - Si                             |"
		Escribir "| 2 - No                             |"
		Escribir "======================================"
		leer bucle
		Borrar Pantalla
		
	Fin Mientras
	

	
FinAlgoritmo