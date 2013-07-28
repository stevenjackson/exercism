class Beer

  def verse(num)
    line1(num) << line2(num-1)
  end

  def line1(num)
    "#{bottles_on_wall(num)}, #{bottles_of_beer(num)}.\n"
  end

  def line2(num)
    "#{take_bottle(num)} and pass it around, #{bottles_on_wall(num)}.\n"
  end

  def bottles_on_wall(num)
    "#{bottles(num)} of beer on the wall"
  end

  def bottles_of_beer(num)
    "#{bottles(num)} of beer"
  end

  def take_bottle(num)
    if(num > 1)
      'Take one down'
    else
      'Take it down'
    end
  end


  def bottles(num)
    if(num == 0)
      "no more bottles"
    elsif(num == 1)
      "#{num} bottle"
    else
      "#{num} bottles"
    end
  end
end
