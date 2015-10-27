class Fixnum

  def to_roman
    # http://www.rapidtables.com/convert/number/how-number-to-roman-numerals.htm
    # got the hash from here. it helped me figure out that i only needed to list 
    # roman numerals that have unique letters or involved subtraction.
  
    rnums = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
      100 => "C", 90 => "XC", 50 => "L", 40 => "XL",
      10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}
    
    num = self
    result = ""

    rnums.each do |arabic, roman|
      while num >= arabic
        result += roman
        num -= arabic
      end
    end

    result
    
  end
end