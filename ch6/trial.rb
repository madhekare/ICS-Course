puts 'what is your first name?'
name= gets.chomp
puts 'what is your middle name?'
name2=gets.chomp
puts 'what is your last name?'
name3=gets.chomp
num = name.length + name2.length + name3.length
puts 'Did u know that there are ' + num.to_s
puts ' letters in your name, '+ name +' '+ name2 +' ' + name3 + ' .'
