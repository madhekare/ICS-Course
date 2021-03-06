def english_number number
if number < 0 # No negative numbers.
return 'Please enter a number that isn\'t negative.'
end
if number == 0
  return 'zero'
end
# No more special cases! No more returns!
num_string = '' # This is the string we will return.
  ones_place = ['one',       'two',      'three',
                'four',      'five',     'six',
                'seven',     'eight',    'nine']
  tens_place = ['ten',       'twenty',   'thirty',
                'forty',     'fifty',    'sixty',
                'seventy',   'eighty',   'ninety']
  teenagers  = ['eleven',    'twelve',   'thirteen',
                'fourteen',  'fifteen',  'sixteen',
'seventeen', 'eighteen', 'nineteen']
# "left" is how much of the number
  #         we still have left to write out.
  #  "write" is the part we are
  #          writing out right now.
  #  write and left...get it?  :)
  left = number
  write = left/1000000000000
  left = left - write*1000000000000
  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' trillion '
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/1000000000
  left = left - write*1000000000
  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' billion '
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/1000000
  left = left - write*1000000
  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' million '
    if left > 0
      num_string = num_string + ' '
    end
  end


write = left/1000
left = left - write*1000
if write > 0
  thousands = english_number write
  num_string = num_string + thousands + ' thousand'
  if left > 0
    num_string = num_string + ' '
  end
end

write = left/100 # How many hundreds left?
left = left - write*100 # Subtract off those hundreds.
if write > 0
# Now here's the recursion:
hundreds = english_number write
num_string = num_string + hundreds + ' hundred'
  if left > 0
      #  So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
end
write = left/10 # How many tens left?
left = left - write*10 # Subtract off those tens.
if write > 0
  if ((write == 1) and (left > 0))
      #  Since we can't write "tenty-two" instead of
      #  "twelve", we have to make a special exception
      #  for these.

      num_string = num_string + teenagers[left-1]
# The "-1" is because teenagers[3] is
# 'fourteen', not 'thirteen'.
# Since we took care of the digit in the
# ones place already, we have nothing left to write.
left = 0
  else
      num_string = num_string + tens_place[write-1]
      #  The "-1" is because tens_place[3] is
# 'forty', not 'thirty'.
  end

  if left > 0
# So we don't write 'sixtyfour'...
num_string = num_string + '-'
  end
end
write = left # How many ones left to write out?
left = 0 # Subtract off those ones.

if write > 0
  num_string = num_string + ones_place[write-1] # The "-1" is because ones_place[3] is
# 'four', not 'three'.
end
  #  Now we just return "num_string"...
  num_string
end

puts 'Please enter a number that you would like to use: '
number = gets.chomp.to_i
while number > 2
  puts english_number(number) + ' bottles of beer on the wall, ' + english_number(number) + ' bottles of beer'
  number = number - 1
  puts 'Take one down, pass it around, ' + english_number(number) + ' bottles of beer on the wall.'
end
  puts english_number(number) + ' bottles of beer on the wall, ' + english_number(number) + ' bottles of beer'
  number = number - 1
  puts 'Take one down, pass it around, ' + english_number(number) + ' bottle of beer on the wall.'
  puts english_number(number) + ' bottle of beer on the wall, ' + english_number(number) + ' bottle of beer'
  number = number - 1
  puts 'Take one down, pass it around, ' + english_number(number) + ' bottles of beer on the wall.'
  puts 'No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.'
