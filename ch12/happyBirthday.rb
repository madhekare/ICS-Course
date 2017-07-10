begin
puts 'Input the year you were born: (full year 4-digit number)'
year = gets.chomp.to_i
puts 'Input the month you were born: (2-digit number 1-12)'
month = gets.chomp.to_i
puts 'Input the day you were born: (1-31)'
day = gets.chomp.to_i
years =((Time.now - Time.local(year,month,day))/31536000)
puts 'The number of years: ' + years.to_s
puts "SPANK!\n"*years
rescue ArgumentError
  puts 'One or more of your inputs is(are) invalid.'
  puts 'Recheck the conditions specified and try again!'
end
