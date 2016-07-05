module BookKeeping
  VERSION = 2
end

class RunLengthEncoding

  def self.encode(input)
    input.gsub(/(.)\1+/) do |match|
      "#{match.length}#{match[0]}"
    end
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
