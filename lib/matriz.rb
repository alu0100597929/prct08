

class Matriz

	attr_accessor :matrix, :fil, :col					# define una variable matrix, fil, col y realiza por defecto 
										# un set y un get de dicha variable

	include Comparable

	def initialize(filas, columnas, *args)
		
		@fil = filas
		@col = columnas
		@numCeldas = @fil * @col
		@matrix = Array.new(@fil) {Array.new(@col)}		# variable de instancia al accessor matrix que se hizo previamente
		
		
		if args.length != 0
			to_s(*args)
		end
		
	end



	def to_s(*args)
		
		if args.length != @numCeldas
			raise ArgumentError, "Numero incorrecto de elementos"
		else
			
			numEle = 0
			i = 0
			
			while i < @fil
				
				j = 0
				
				while j < @col
					
					@matrix[i][j] = args[numEle]
					numEle += 1
					j += 1
					
				end
				i += 1
				
			end
			
			return @matrix
			
		end
	end
	
	
	def +(other)
		
		if ((other.class.to_s == "Matriz") && (other.fil == @fil) && (other.col == @col))
			
			matrizSuma = Array.new(@fil) {Array.new(@col)}
			i = 0								
			
			while i < @fil						
				
				j = 0
				
				while j < @col					
					
					matrizSuma[i][j] = @matrix[i][j] + other.matrix[i][j]
					j += 1
					
				end
				
				i += 1
			end
			
			#puts "#{matrizSuma}"
			return matrizSuma
			
		else
			raise ArgumentError, "Matrices de distinto tamanio"
		end
	end


	def -(other)
		
		if ((other.class.to_s == "Matriz") && (other.fil == @fil) && (other.col == @col))
			
			matrizResta = Array.new(@fil) {Array.new(@col)}
			i = 0								
			
			while i < @fil						
				
				j = 0
				
				while j < @col					
					
					matrizResta[i][j] = @matrix[i][j] - other.matrix[i][j]
					j += 1
					
				end
				
				i += 1
			end
			
			#puts "#{matrizResta}"
			return matrizResta
			
		else
			raise ArgumentError, "Matrices de distinto tamanio"
		end
	end
	
	
	def *(other)
		
		if ((other.class.to_s == "Matriz") && (@fil == @col) && (other.fil == other.col) && (@fil == other.fil))
			
			matrizMult = Array.new(@fil) {Array.new(@col)}
			i = 0								
			
			while i < @fil						
				
				j = 0
				
				while j < @col					
					
					matrizMult[i][j] = 0		
					k = 0
					
					while k < @col				
						
						matrizMult[i][j] = matrizMult[i][j] + (@matrix[i][k] * other.matrix[k][j])
						k += 1
						
					end
					
					j += 1
					
				end
				
				i += 1
				
			end
			
			#puts "#{matrizMult}"
			return matrizMult
			
		else
			raise ArgumentError, "Numero distinto de filas y columnas"
		end
		
	end


	def <=>(other)

		if (other.class.to_s == "Matriz")

			return ((@fil * @col) <=> (other.fil * other.col))		

		else
			raise ArgumentError, "Error. Argumento incorrecto"
		end

	end

end




