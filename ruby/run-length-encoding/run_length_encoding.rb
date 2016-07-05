module BookKeeping
  VERSION = 2
end

class RunLengthEncoding

  def self.encode(input)
    count = 1
    index = 0
    result = [""]

    while index < input.chars.count
      if input.chars[index] == input.chars[index+1]
        count += 1
      else
        if count > 1
          result.push(count)
        end
        result.push(input.chars[index])
        count = 1
      end
      index +=1
    end
    result.join
  end

  def self.decode(input)
    result = [""]
    t = 1 # how many times

    arr = input.scan(/\d+|[\p{Alpha}\p{Space}+\p{S}]/)

    arr.map { |x|
      if x =~ /\d+/
        t = x
      else
        t.to_i.times do
          result.push(x)
        end
        t = 1
      end
    }
    result.join
  end

end
