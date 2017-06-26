def old_Roman input
  str = []
  if input < 0
    return 'Neg Num Not Allowed'
  end
  g = input
  a = input % 1000
  b = input % 500
  c = input % 100
  d = input % 50
  e = input % 10
  f = input % 5

abc = [g,a,b,c,d,e,f]
al = nil
  abc.each do |number|
if number != al
  if number >= 1000
    str.push 'M'* (number/1000)

  elsif number >= 500
    str.push 'D'* (number/500)

  elsif number >= 100
    str.push 'C'* (number/100)

  elsif number >= 50
    str.push 'L'* (number/50)

  elsif number >= 10
    str.push 'X'* (number/10)

  elsif number >= 5
    str.push 'V'* (number/5)

  elsif number >= 1
    str.push 'I'* (number%5)

  else number == 0
    return 'zero not allowed'
  end
  al = number
else
  str.push ''
end
    end
  return str.join('')
  end



puts 'Please enter a number that you want to be converted to Old Roman Numerals'
response = gets.chomp.to_i
puts old_Roman response
