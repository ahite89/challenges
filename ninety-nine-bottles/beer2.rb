beer = 99
while true
  if beer > 1
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

puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall"
