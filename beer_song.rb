class BeerSong

  def verse(bottles_number)
    case bottles_number
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
        "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "#{bottles_number} bottles of beer on the wall, #{bottles_number} bottles of beer.\n" \
        "Take one down and pass it around, #{bottles_number - 1} bottles of beer on the wall.\n"
    end
  end

  def verses(bottles_number_begin, bottles_number_end)
    bottles_number_begin.downto(bottles_number_end).map(&method(:verse)).join("\n")
  end

end
