beer = 99
while true
  if beer > 2
    puts "#{beer} bottles of beer on the wall, #{beer} bottles of beer.
    Take one down and pass it around, #{beer -= 1} bottles of beer on the wall."
    puts
    if beer % 10 == 0
      puts "#{beer} bottles of beer on the wall, #{beer} bottles of beer!
      Take one down and pass it around, #{beer -= 1} bottles of beer on the wall."
      puts
    end
  else
    break
  end
end
puts "2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall."
puts
puts "1 bottle of beer on the wall, 1 bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall."
puts
puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall"
