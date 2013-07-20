class Phrase < String

  def word_count
    count_words = -> (hash, word) { hash[word] += 1; hash;  }
    words.reduce(Hash.new(0), &count_words)
  end

  def words
    scan(/\w+/).map{|w|w.downcase}
  end

end
