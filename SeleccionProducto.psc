Algoritmo SeleccionProducto
	Dimensionar vectorPro(9)
	Definir producto, cant, cantA, cantM, cantP, cantR Como Entero
	Definir xPro, xCant Como Cadena
	Escribir '+--------------------------------------------------------------------+'
	Escribir '| Este pseudocódigo muestra el funcionamiento del sistema de pedidos |'
	Escribir '| de productos artesanales, tanto la cantidad y el costo de los      |'
	Escribir '| mismos. Al finalizar se imprime la cantidad de cada cosa y el total|'
	Escribir '+--------------------------------------------------------------------+'
	// Seleccionar el producto a pedir 
	Repetir
		Escribir '======================================='
		Escribir '***************************************'
		Escribir 'Selecciona los productos a pedir'
		Escribir '1. Alfajore Santiagueños $150 c/u'
		Escribir '2. Pan de campo $500 c/u'
		Escribir '3. Moroncito $100 c/u'
		Escribir '4. Rosquete $100 c/u'
		Escribir '0. Pagar total'
		Escribir '***************************************'
		Escribir '======================================='
		Escribir ''
		Leer producto
		Limpiar Pantalla
		Según producto Hacer
			1:
				Escribir 'Ingrese la cantidad de Alfajores que desea'
				Leer cant
				cantA <- cantA+cant
				total <- total+(cant*150)
				vectorPro[1] <- 'Alfajores'
				vectorPro[2] <- ConvertirATexto(cantA)
			2:
				Escribir 'Ingrese la cantidad de Pan que desea'
				Leer cant
				cantP <- cantP+cant
				total <- total+(cant*500)
				vectorPro[3] <- 'Pan'
				vectorPro[4] <- ConvertirATexto(cantP)
			3:
				Escribir 'Ingrese la cantidad de Moroncito que desea'
				Leer cant
				cantM <- cantM+cant
				total <- total+(cant*100)
				vectorPro[5] <- 'Moroncito'
				vectorPro[6] <- ConvertirATexto(cantM)
			4:
				Escribir 'Ingrese la cantidad de Rosquete que desea'
				Leer cant
				cantR <- cantR+cant
				total <- total+(cant*100)
				vectorPro[7] <- 'Rosquete'
				vectorPro[8] <- ConvertirATexto(cantR)
			0:
				Para i<-1 Hasta 8 Con Paso 2 Hacer
					Si vectorPro[i]<>null Entonces
						xPro <- vectorPro[i]
						xCant <- vectorPro[i+1]
						Escribir xPro, ' ', xCant
					FinSi
				FinPara
				Escribir 'El total a pagar es: ', total
			De Otro Modo:
				Escribir 'no ingreso una opcion correcta'
		FinSegún
	Hasta Que producto=0
FinAlgoritmo
