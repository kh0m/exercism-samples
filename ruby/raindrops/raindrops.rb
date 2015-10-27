require 'prime'

class Raindrops
  def self.convert(num)
    # I liked the use of a hash here like I saw others do
    raindrop_speak = {3 => "Pling", 5 => "Plang", 7 => "Plong"}

    drops = []
    num.prime_division.collect do |x|
      drops << (raindrop_speak[x[0]]) if raindrop_speak[x[0]]
    end
    
    drops.empty? ? drops = num.to_s : drops.join
    
  end
end
