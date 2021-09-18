class Anagram
    attr_accessor :word

    @@all = []

    def self.all
        @@all
    end

    def initialize(word)
        @word = word
        @@all << self
    end

    def match(collection)
        collection.select {|i| i.chars.sort == self.word.chars.sort} 
    end
end
