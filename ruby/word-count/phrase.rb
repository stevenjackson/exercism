class Phrase < String

  def word_count
    #add_word_to_count = ->(hash, word) { hash[word] += 1; hash;  }
    #words.reduce(Hash.new(0), &add_word_to_count)
    Histogram.new(self).to_h
  end

  def words
    scan(/\w+/).map { |w| w.downcase }
  end

  class Histogram < Hash
    attr_accessor :list
    def initialize(phrase)
      store_counts phrase
    end

    def store_counts(phrase)
      self.list = phrase.words.group_by do |word| 
        word
      end.map do |word, words|
        [word, words.length]
      end
    end

    def to_h
      Hash[list]
    end
  end

end
