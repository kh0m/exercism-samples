class Gigasecond
    VERSION = 1.freeze
    
    def self.from(t)
        raise ArgumentError, "must be utc format." if t.utc? == false
        anniv = t + 10**9
    end
end