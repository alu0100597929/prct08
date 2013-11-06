
require "./matriz.rb"
require "test/unit"
require "rspec"


class Test_Matriz < Test::Unit::TestCase

	def test_mostrar
	
		assert([[1, 2],[3, 4]] == Matriz.new(2,2).to_s(1,2,3,4))				# |
		assert_equal(0, [[1, 2],[3, 4]] <=> Matriz.new(2,2).to_s(1,2,3,4))		# 3 formas distintas de hacer lo mismo
		assert_equal([[1, 2],[3, 4]], Matriz.new(2,2).to_s(1,2,3,4))			# |
		
		assert_equal([[1, 2, 3], [4, 5, 6], [7, 8, 9]], Matriz.new(3,3).to_s(1,2,3,4,5,6,7,8,9))
		
	end
	
	def test_suma
		assert_equal([[2, 4],[6, 8]], Matriz.new(2,2,1,2,3,4).+(Matriz.new(2,2,1,2,3,4)))
		assert_equal([[2, 4, 6],[8, 10, 12], [14, 16, 18]], Matriz.new(3,3,1,2,3,4,5,6,7,8,9).+(Matriz.new(3,3,1,2,3,4,5,6,7,8,9)))
		
		assert_equal([[2, 3],[4, 5]], Matriz.new(2,2,1,2,3,4).+(Matriz.new(2,2,1,1,1,1)))
		assert_equal([[2, 3, 4],[5, 6, 7], [8, 9, 10]], Matriz.new(3,3,1,2,3,4,5,6,7,8,9).+(Matriz.new(3,3,1,1,1,1,1,1,1,1,1)))
	end
	
	
	def test_resta
		assert_equal([[0, 0],[0, 0]], Matriz.new(2,2,1,2,3,4).-(Matriz.new(2,2,1,2,3,4)))
		assert_equal([[0, 0, 0],[0, 0, 0], [0, 0, 0]], Matriz.new(3,3,1,2,3,4,5,6,7,8,9).-(Matriz.new(3,3,1,2,3,4,5,6,7,8,9)))
		
		assert_equal([[0, 1],[2, 3]], Matriz.new(2,2,1,2,3,4).-(Matriz.new(2,2,1,1,1,1)))
		assert_equal([[0, 1, 2],[3, 4, 5], [6, 7, 8]], Matriz.new(3,3,1,2,3,4,5,6,7,8,9).-(Matriz.new(3,3,1,1,1,1,1,1,1,1,1)))
	end
	
	
	def test_multiplicacion
		assert_equal([[7, 10],[15, 22]], Matriz.new(2,2,1,2,3,4).*(Matriz.new(2,2,1,2,3,4)))
		assert_equal([[30, 36, 42],[66, 81, 96], [102, 126, 150]], Matriz.new(3,3,1,2,3,4,5,6,7,8,9).*(Matriz.new(3,3,1,2,3,4,5,6,7,8,9)))
		
		assert_equal([[6, 6],[14, 14]], Matriz.new(2,2,1,2,3,4).*(Matriz.new(2,2,2,2,2,2)))
		assert_equal([[4, 2, 4],[10, 5, 10], [16, 8, 16]], Matriz.new(3,3,1,2,3,4,5,6,7,8,9).*(Matriz.new(3,3,1,0,1,0,1,0,1,0,1)))
	end


	def test_comparable
		assert_equal(1, Matriz.new(3,2).<=>(Matriz.new(2,2)))
		assert_equal(-1, Matriz.new(2,2).<=>(Matriz.new(3,2)))
		assert_equal(0, Matriz.new(2,2).<=>(Matriz.new(2,2)))
	end
end
