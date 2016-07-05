class FoodChain
  VERSION = 2

  def self.animals
    [{name:'fly', line: "I don't know why she swallowed the fly. Perhaps she'll die."},
    {name:'spider', line: "It wriggled and jiggled and tickled inside her."},
    {name:'bird', line: "How absurd to swallow a bird!"},
    {name:'cat', line: "Imagine that, to swallow a cat!"},
    {name:'dog', line: "What a hog, to swallow a dog!"},
    {name:'goat', line: "Just opened her throat and swallowed a goat!"},
    {name:'cow', line: "I don't know how she swallowed a cow!"},
    {name:'horse', line: "She's dead, of course!"}]
  end

  def self.song
    result = ""
    animals.each_with_index {|x, index|
      result << first_lines(index)
      break if index == animals.count-1
      result << middle_lines(index)
      result << "#{animals[0][:line]}\n" unless index == 0
      result << "\n"
    }
    result
  end

  def self.first_lines(num)
    lines = ""
    lines << "I know an old lady who swallowed a #{animals[num][:name]}.\n"
    lines << "#{animals[num][:line]}\n"
    lines
  end

  def self.middle_lines(num)
    lines = ""
    num.downto(1) do |x|
      if animals[x][:name] == 'bird'
        lines << "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.\n"
      else
        lines << "She swallowed the #{animals[x][:name]} to catch the #{animals[x-1][:name]}.\n"
      end
    end
    lines
  end



end
