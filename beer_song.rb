class BeerSong

  def verse(bottles_number)
    first_sentence(bottles_number) + second_sentence(bottles_number) 
  end

  def verses(bottles_number_begin, bottles_number_end)
    bottles_number_begin.downto(bottles_number_end).map(&method(:verse)).join("\n")
  end

  def lyrics
    verses(99, 0)
  end

private

  def first_sentence(bottles_number)
    "#{bottles_quantity(bottles_number).capitalize} of beer on the wall, #{bottles_quantity(bottles_number)} of beer.\n"
  end

  def second_sentence(bottles_number)
    if bottles_number == 0
      "Go to the store and buy some more, #{bottles_quantity(99)}"
    else
      "Take #{article(bottles_number)} down and pass it around, #{bottles_quantity(bottles_number - 1)}"
    end  + " of beer on the wall.\n"
  end

  def bottles_quantity(bottles_number)
    case bottles_number
    when 1
      "1 bottle"
    when 0, -1
      "no more bottles"
    else
      "#{bottles_number} bottles"
    end
  end

  def article(bottles_number)
    if bottles_number == 1
      "it"
    else
      "one"
    end
  end
  
end
