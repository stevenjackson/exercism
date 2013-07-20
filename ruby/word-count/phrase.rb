class Phrase < String

  def word_count
    Hash[scan(/\w+/).group_by {|w|w}.map{|w, total| [w, total.length] }]
  end

end
