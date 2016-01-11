class Trinary

  def initialize(num)
    @tri_num = num
  end

  def valid_symbols
    ['0', '1', '2']
  end

  def to_decimal
    if @tri_num.chars.all? {|e| valid_symbols.include?(e)}
      result = @tri_num.chars.reverse.each_with_index.map {|x, index| x.to_i * 3**index}
      result.inject(0){|sum, x| sum + x.to_i}
    else
      0
    end
  end

end
