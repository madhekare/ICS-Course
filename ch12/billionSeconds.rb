begin
puts 'Input the year you were born: (full year 4-digit number)'
year = gets.chomp.to_i
puts 'Input the month you were born: (2-digit number 1-12)'
month = gets.chomp.to_i
puts 'Input the day you were born: (1-31)'
day = gets.chomp.to_i
puts 'Input the hour you were born: (for example: 11 for 11:00 am and 14 for 2:00 pm)'
hour = gets.chomp.to_i
puts 'Input the minute you were born: (0-60)'
minute = gets.chomp.to_i
puts 'Input the second you were born: (0-60)'
sec = gets.chomp.to_i
born = Time.local(year,month,day,hour,minute,sec)
puts 'You will be 1 billion seconds old in: ' + (born + 1000000000).to_s
rescue ArgumentError
  puts 'One or more of your inputs is(are) invalid.'
  puts 'Recheck the conditions specified and try again!'
end
