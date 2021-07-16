#¿Se puede poner la ejecucion de una variable en el nombre de una nueva variable al declarar? (ej jug1, jug2, jug3... -- jug#variable)

#Entrada nombres de jugadores // PREGUNTAR: al dar intro en el "gets" pilla el salto de linea y cuando llamas a la variable va incluido el salto de linea.
print "Nombre del jugador 1: "
jug1 = gets
#jug1 = "david"

print "Nombre del jugador 2: "
jug2 = gets
#jug2 = "cano"

# Creacion de Tablero con una matriz de 0s
require 'matrix'
tablero = Matrix.zero(6,7)


#Creacion Fichas Jugadores 
fichaJug1 = "x"
fichaJug2 = "o"


#Creacion arrays de cada fila para comprobar 
def filas(tablero)
	#Fila0
		e = 0
		@fila0 = Array.new
		while e < 7
			@fila0 << tablero[0,e]
			e += 1
		end

	#Fila1
		e = 0
		@fila1 = Array.new
		while e < 7
			@fila1 << tablero[1,e]
			e += 1
		end

	#Fila2
		e = 0
		@fila2 = Array.new
		while e < 7
			@fila2 << tablero[2,e]
			e += 1
		end

	#Fila3
		e = 0
		@fila3 = Array.new
		while e < 7
			@fila3 << tablero[3,e]
			e += 1
		end

	#Fila4
		e = 0
		@fila4 = Array.new
		while e < 7
			@fila4 << tablero[4,e]
			e += 1
		end


	#Fila5
		e = 0
		@fila5 = Array.new
		while e < 7
			@fila5 << tablero[5,e]
			e += 1
		end
end

#Creacion arrays de cada columna para comprobar 
def columnas(tablero)
	#Columnas0
		e = 0
		@columna0 = Array.new
		while e < 6
			@columna0 << tablero[e,0]
			e += 1
		end

	#Columnas1
		e = 0
		@columna1 = Array.new
		while e < 6
			@columna1 << tablero[e,1]
			e += 1
		end

	#Columnas2
		e = 0
		@columna2 = Array.new
		while e < 6
			@columna2 << tablero[e,2]
			e += 1
		end

	#Columnas3
		e = 0
		@columna3 = Array.new
		while e < 6
			@columna3 << tablero[e,3]
			e += 1
		end

	#Columnas4
		e = 0
		@columna4 = Array.new
		while e < 6
			@columna4 << tablero[e,4]
			e += 1
		end


	#Columnas5
		e = 0
		@columna5 = Array.new
		while e < 6
			@columna5 << tablero[e,5]
			e += 1
		end

	#Columnas6
		e = 0
		@columna6 = Array.new
		while e < 6
			@columna6 << tablero[e,6]
			e += 1
		end
end


#Funcion lanzamiento/colocacion ficha en columna, Jugador 1
def lanzamiento1(jug1)
	print "Turno #{jug1.capitalize}, seleccione casilla (0-6)"
	@lanz1 = gets.to_i

end

#Funcion lanzamiento/colocacion ficha en columna, Jugador 2
def lanzamiento2(jug2)
	print "Turno #{jug2.capitalize}, seleccione casilla (0-6)"
	@lanz2 = gets.to_i

end



n = 0
while n < 5



#Lanzamiento/colocacion ficha en columna Jugador 1
	lanzamiento1(jug1)

	#Bucle añadir posicion ficha
	i = 0
	while i <= 5
	
		if tablero[i,@lanz1] != 0
			ficha = i-1
			tablero[ficha,@lanz1] = fichaJug1
			i = 6 #Salir del bucle
		end

		if i == 5
			tablero[i,@lanz1] = fichaJug1
		end

		i +=1
	end

puts tablero
#¿METER EN FUNCIONES?, DA ERROR AL USAR BREAK DENTRO DE ESTAS. PROBAR VARIABLE DE INSTANCIA @filaX/@columnaX 
#COMPROBAR
	#LLamamos funcion arrays de cada fila y comprobamos
	filas(tablero)
	if @fila0[3] != 0
		if @fila0[0] == @fila0[1] && @fila0[1] == @fila0[2] && @fila0[2] == @fila0[3] || @fila0[1] == @fila0[2] && @fila0[2] == @fila0[3] && @fila0[3] == @fila0[4] || @fila0[2] == @fila0[3] && @fila0[3] == @fila0[4] && @fila0[4] == @fila0[5] || @fila0[3] == @fila0[4] && @fila0[4] == @fila0[5] && @fila0[5]== @fila0[6]
				if @fila0[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @fila1[3] != 0
		if @fila1[0] == @fila1[1] && @fila1[1] == @fila1[2] && @fila1[2] == @fila1[3] || @fila1[1] == @fila1[2] && @fila1[2] == @fila1[3] && @fila1[3] == @fila1[4] || @fila1[2] == @fila1[3] && @fila1[3] == @fila1[4] && @fila1[4] == @fila1[5] || @fila1[3] == @fila1[4] && @fila1[4] == @fila1[5] && @fila1[5]== @fila1[6]
				if @fila1[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @fila2[3] != 0
		if @fila2[0] == @fila2[1] && @fila2[1] == @fila2[2] && @fila2[2] == @fila2[3] || @fila2[1] == @fila2[2] && @fila2[2] == @fila2[3] && @fila2[3] == @fila2[4] || @fila2[2] == @fila2[3] && @fila2[3] == @fila2[4] && @fila2[4] == @fila2[5] || @fila2[3] == @fila2[4] && @fila2[4] == @fila2[5] && @fila2[5]== @fila2[6]
				if @fila2[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @fila3[3] != 0
		if @fila3[0] == @fila3[1] && @fila3[1] == @fila3[2] && @fila3[2] == @fila3[3] || @fila3[1] == @fila3[2] && @fila3[2] == @fila3[3] && @fila3[3] == @fila3[4] || @fila3[2] == @fila3[3] && @fila3[3] == @fila3[4] && @fila3[4] == @fila3[5] || @fila3[3] == @fila3[4] && @fila3[4] == @fila3[5] && @fila3[5]== @fila3[6]
				if @fila3[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @fila4[3] != 0
		if @fila4[0] == @fila4[1] && @fila4[1] == @fila4[2] && @fila4[2] == @fila4[3] || @fila4[1] == @fila4[2] && @fila4[2] == @fila4[3] && @fila4[3] == @fila4[4] || @fila4[2] == @fila4[3] && @fila4[3] == @fila4[4] && @fila4[4] == @fila4[5] || @fila4[3] == @fila4[4] && @fila4[4] == @fila4[5] && @fila4[5]== @fila4[6]
				if @fila4[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @fila5[3] != 0
		if @fila5[0] == @fila5[1] && @fila5[1] == @fila5[2] && @fila5[2] == @fila5[3] || @fila5[1] == @fila5[2] && @fila5[2] == @fila5[3] && @fila5[3] == @fila5[4] || @fila5[2] == @fila5[3] && @fila5[3] == @fila5[4] && @fila5[4] == @fila5[5] || @fila5[3] == @fila5[4] && @fila5[4] == @fila5[5] && @fila5[5]== @fila5[6]
				if @fila5[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end	

	#LLamamos funcion arrays de cada columna y comprobamos
	columnas(tablero)
	if @columna0[3] != 0
		if @columna0[0] == @columna0[1] && @columna0[1] == @columna0[2] && @columna0[2] == @columna0[3] || @columna0[1] == @columna0[2] && @columna0[2] == @columna0[3] && @columna0[3] == @columna0[4] || @columna0[2] == @columna0[3] && @columna0[3] == @columna0[4] && @columna0[4] == @columna0[5] 
				if @columna0[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @columna1[3] != 0
		if @columna1[0] == @columna1[1] && @columna1[1] == @columna1[2] && @columna1[2] == @columna1[3] || @columna1[1] == @columna1[2] && @columna1[2] == @columna1[3] && @columna1[3] == @columna1[4] || @columna1[2] == @columna1[3] && @columna1[3] == @columna1[4] && @columna1[4] == @columna1[5] 
				if @columna1[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @columna2[3] != 0
		if @columna2[0] == @columna2[1] && @columna2[1] == @columna2[2] && @columna2[2] == @columna2[3] || @columna2[1] == @columna2[2] && @columna2[2] == @columna2[3] && @columna2[3] == @columna2[4] || @columna2[2] == @columna2[3] && @columna2[3] == @columna2[4] && @columna2[4] == @columna2[5] 
				if @columna2[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @columna3[3] != 0
		if @columna3[0] == @columna3[1] && @columna3[1] == @columna3[2] && @columna3[2] == @columna3[3] || @columna3[1] == @columna3[2] && @columna3[2] == @columna3[3] && @columna3[3] == @columna3[4] || @columna3[2] == @columna3[3] && @columna3[3] == @columna3[4] && @columna3[4] == @columna3[5] 
				if @columna3[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @columna4[3] != 0
		if @columna4[0] == @columna4[1] && @columna4[1] == @columna4[2] && @columna4[2] == @columna4[3] || @columna4[1] == @columna4[2] && @columna4[2] == @columna4[3] && @columna4[3] == @columna4[4] || @columna4[2] == @columna4[3] && @columna4[3] == @columna4[4] && @columna4[4] == @columna4[5] 
				if @columna4[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @columna5[3] != 0
		if @columna5[0] == @columna5[1] && @columna5[1] == @columna5[2] && @columna5[2] == @columna5[3] || @columna5[1] == @columna5[2] && @columna5[2] == @columna5[3] && @columna5[3] == @columna5[4] || @columna5[2] == @columna5[3] && @columna5[3] == @columna5[4] && @columna5[4] == @columna5[5] 
				if @columna5[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @columna6[3] != 0
		if @columna6[0] == @columna6[1] && @columna6[1] == @columna6[2] && @columna6[2] == @columna6[3] || @columna6[1] == @columna6[2] && @columna6[2] == @columna6[3] && @columna6[3] == @columna0[4] || @columna6[2] == @columna6[3] && @columna6[3] == @columna6[4] && @columna6[4] == @columna6[5] 
				if @columna6[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end


#Lanzamiento/colocacion ficha en columna Jugador 2
	lanzamiento2(jug2)

	#Bucle añadir posicion ficha
	i = 0
	while i <= 5
		
		if tablero[i,@lanz2] != 0
			ficha = i-1
			tablero[ficha,@lanz2] = fichaJug2
			i = 6 #Salir del bucle
		end

		if i == 5
			tablero[i,@lanz2] = fichaJug2
		end

		i +=1
	end

puts tablero

#¿METER EN FUNCIONES?, DA ERROR AL USAR BREAK DENTRO DE ESTAS. PROBAR VARIABLE DE INSTANCIA @filaX/@columnaX 
#COMPROBAR
	#LLamamos funcion arrays de cada fila y comprobamos
	filas(tablero)
	if @fila0[3] != 0
		if @fila0[0] == @fila0[1] && @fila0[1] == @fila0[2] && @fila0[2] == @fila0[3] || @fila0[1] == @fila0[2] && @fila0[2] == @fila0[3] && @fila0[3] == @fila0[4] || @fila0[2] == @fila0[3] && @fila0[3] == @fila0[4] && @fila0[4] == @fila0[5] || @fila0[3] == @fila0[4] && @fila0[4] == @fila0[5] && @fila0[5]== @fila0[6]
				if @fila0[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @fila1[3] != 0
		if @fila1[0] == @fila1[1] && @fila1[1] == @fila1[2] && @fila1[2] == @fila1[3] || @fila1[1] == @fila1[2] && @fila1[2] == @fila1[3] && @fila1[3] == @fila1[4] || @fila1[2] == @fila1[3] && @fila1[3] == @fila1[4] && @fila1[4] == @fila1[5] || @fila1[3] == @fila1[4] && @fila1[4] == @fila1[5] && @fila1[5]== @fila1[6]
				if @fila1[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @fila2[3] != 0
		if @fila2[0] == @fila2[1] && @fila2[1] == @fila2[2] && @fila2[2] == @fila2[3] || @fila2[1] == @fila2[2] && @fila2[2] == @fila2[3] && @fila2[3] == @fila2[4] || @fila2[2] == @fila2[3] && @fila2[3] == @fila2[4] && @fila2[4] == @fila2[5] || @fila2[3] == @fila2[4] && @fila2[4] == @fila2[5] && @fila2[5]== @fila2[6]
				if @fila2[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @fila3[3] != 0
		if @fila3[0] == @fila3[1] && @fila3[1] == @fila3[2] && @fila3[2] == @fila3[3] || @fila3[1] == @fila3[2] && @fila3[2] == @fila3[3] && @fila3[3] == @fila3[4] || @fila3[2] == @fila3[3] && @fila3[3] == @fila3[4] && @fila3[4] == @fila3[5] || @fila3[3] == @fila3[4] && @fila3[4] == @fila3[5] && @fila3[5]== @fila3[6]
				if @fila3[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @fila4[3] != 0
		if @fila4[0] == @fila4[1] && @fila4[1] == @fila4[2] && @fila4[2] == @fila4[3] || @fila4[1] == @fila4[2] && @fila4[2] == @fila4[3] && @fila4[3] == @fila4[4] || @fila4[2] == @fila4[3] && @fila4[3] == @fila4[4] && @fila4[4] == @fila4[5] || @fila4[3] == @fila4[4] && @fila4[4] == @fila4[5] && @fila4[5]== @fila4[6]
				if @fila4[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @fila5[3] != 0
		if @fila5[0] == @fila5[1] && @fila5[1] == @fila5[2] && @fila5[2] == @fila5[3] || @fila5[1] == @fila5[2] && @fila5[2] == @fila5[3] && @fila5[3] == @fila5[4] || @fila5[2] == @fila5[3] && @fila5[3] == @fila5[4] && @fila5[4] == @fila5[5] || @fila5[3] == @fila5[4] && @fila5[4] == @fila5[5] && @fila5[5]== @fila5[6]
				if @fila5[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end	

	#LLamamos funcion arrays de cada columna y comprobamos
	columnas(tablero)
	if @columna0[3] != 0
		if @columna0[0] == @columna0[1] && @columna0[1] == @columna0[2] && @columna0[2] == @columna0[3] || @columna0[1] == @columna0[2] && @columna0[2] == @columna0[3] && @columna0[3] == @columna0[4] || @columna0[2] == @columna0[3] && @columna0[3] == @columna0[4] && @columna0[4] == @columna0[5] 
				if @columna0[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @columna1[3] != 0
		if @columna1[0] == @columna1[1] && @columna1[1] == @columna1[2] && @columna1[2] == @columna1[3] || @columna1[1] == @columna1[2] && @columna1[2] == @columna1[3] && @columna1[3] == @columna1[4] || @columna1[2] == @columna1[3] && @columna1[3] == @columna1[4] && @columna1[4] == @columna1[5] 
				if @columna1[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @columna2[3] != 0
		if @columna2[0] == @columna2[1] && @columna2[1] == @columna2[2] && @columna2[2] == @columna2[3] || @columna2[1] == @columna2[2] && @columna2[2] == @columna2[3] && @columna2[3] == @columna2[4] || @columna2[2] == @columna2[3] && @columna2[3] == @columna2[4] && @columna2[4] == @columna2[5] 
				if @columna2[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @columna3[3] != 0
		if @columna3[0] == @columna3[1] && @columna3[1] == @columna3[2] && @columna3[2] == @columna3[3] || @columna3[1] == @columna3[2] && @columna3[2] == @columna3[3] && @columna3[3] == @columna3[4] || @columna3[2] == @columna3[3] && @columna3[3] == @columna3[4] && @columna3[4] == @columna3[5] 
				if @columna3[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @columna4[3] != 0
		if @columna4[0] == @columna4[1] && @columna4[1] == @columna4[2] && @columna4[2] == @columna4[3] || @columna4[1] == @columna4[2] && @columna4[2] == @columna4[3] && @columna4[3] == @columna4[4] || @columna4[2] == @columna4[3] && @columna4[3] == @columna4[4] && @columna4[4] == @columna4[5] 
				if @columna4[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @columna5[3] != 0
		if @columna5[0] == @columna5[1] && @columna5[1] == @columna5[2] && @columna5[2] == @columna5[3] || @columna5[1] == @columna5[2] && @columna5[2] == @columna5[3] && @columna5[3] == @columna5[4] || @columna5[2] == @columna5[3] && @columna5[3] == @columna5[4] && @columna5[4] == @columna5[5] 
				if @columna5[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

	if @columna6[3] != 0
		if @columna6[0] == @columna6[1] && @columna6[1] == @columna6[2] && @columna6[2] == @columna6[3] || @columna6[1] == @columna6[2] && @columna6[2] == @columna6[3] && @columna6[3] == @columna0[4] || @columna6[2] == @columna6[3] && @columna6[3] == @columna6[4] && @columna6[4] == @columna6[5] 
				if @columna6[3] == fichaJug1
					puts "Ha ganado #{jug1.capitalize} !!!!"
				else 
					puts "Ha ganado #{jug2.capitalize} !!!!"
				end
				break
		end	
	end

#AUMENTO CONTADOR BUCLE
	n +=1



end





puts tablero


