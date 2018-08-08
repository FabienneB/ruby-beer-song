class BeerSong

  def verse(bottles_number)
    next_bottles_number = bottles_number -1
    if next_bottles_number == 1 
      "#{bottles_number} bottles of beer on the wall, #{bottles_number} bottles of beer.\n" \
      "Take one down and pass it around, #{next_bottles_number} bottle of beer on the wall.\n"
    elsif next_bottles_number == 0
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "#{bottles_number} bottles of beer on the wall, #{bottles_number} bottles of beer.\n" \
      "Take one down and pass it around, #{next_bottles_number} bottles of beer on the wall.\n"
    end

  end


end