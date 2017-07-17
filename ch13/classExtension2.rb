class Integer

def calculate
  factorial self
end

def factorial num
  if num < 0
    return 'You can\'t take the factorial of a negative number!'
  end
  if num <= 1
      1
  else
      num * factorial(num-1)
  end
end
end

puts 'Please enter a number that you want the factorial of.'
numb = gets.chomp.to_i
puts numb.calculate
