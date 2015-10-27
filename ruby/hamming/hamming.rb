class Hamming
    VERSION = 1
    def self.compute(strand1, strand2)
        raise ArgumentError, "strand lengths must match." if strand1.length!=strand2.length
        count=0
        (0..strand1.length-1).each do |i|
            count+=1 if strand1[i]!=strand2[i]
        end
        return count
    end
end