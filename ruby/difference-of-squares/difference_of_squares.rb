class Squares
  attr_reader :arr

  def initialize(num)
    @arr = (0..num)
  end

  def square_of_sums
    arr.inject(:+)**2
	end
  
  def sum_of_squares
    arr.inject(0){|sum,x| sum += x**2}
  end
    
  def difference
    (square_of_sums - sum_of_squares).abs
  end
end