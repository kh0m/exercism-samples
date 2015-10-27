class Complement
  VERSION = 2

  def self.of_dna(strand)
    strand.upcase.each_char do |nucleotide|
      raise ArgumentError, "must consist of 'G','C','T', or 'A'" unless nucleotide =~ /[GCTA]/
    end
    strand.upcase.gsub(/[GCTA]/, 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
  end

  def self.of_rna(strand)
    strand.upcase.each_char do |nucleotide|
      raise ArgumentError, "must consist of 'C','G','A', or 'U'" unless nucleotide =~ /[GCAU]/
    end
    strand.upcase.gsub(/[GCAU]/, 'C' => 'G', 'G' => 'C', 'A' => 'T', 'U' => 'A')
  end

end
