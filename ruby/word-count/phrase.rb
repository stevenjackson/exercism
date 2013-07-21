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
    def initialize(phrase)
      super 0
      phrase.words.each do |word|
        [word] += 1
      end
    end
  end

end
