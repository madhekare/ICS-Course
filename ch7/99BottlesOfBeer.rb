number = 99
while number > 2
  puts number.to_s + ' bottles of beer on the wall, ' + number.to_s + ' bottles of beer'
  number = number - 1
  puts 'Take one down, pass it around, ' + number.to_s + ' bottles of beer on the wall.'
end
  puts number.to_s + ' bottles of beer on the wall, ' + number.to_s + ' bottles of beer'
  number = number - 1
  puts 'Take one down, pass it around, ' + number.to_s + ' bottle of beer on the wall.'
  puts number.to_s + ' bottle of beer on the wall, ' + number.to_s + ' bottle of beer'
  number = number - 1
  puts 'Take one down, pass it around, ' + number.to_s + ' bottles of beer on the wall.'
  puts 'No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.'
