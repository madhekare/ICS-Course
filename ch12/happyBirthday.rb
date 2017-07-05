puts 'Input the year you were born:'
year = gets.chomp.to_i
puts 'Input the month you were born:'
month = gets.chomp.to_i
puts 'Input the day you were born:'
day = gets.chomp.to_i
years =((Time.now - Time.local(year,month,day))/31536000)
puts 'The number of years: ' + years.to_s
puts "SPANK!\n"*years
