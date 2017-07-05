puts 'Input the year you were born:'
year = gets.chomp.to_i
puts 'Input the month you were born:'
month = gets.chomp.to_i
puts 'Input the day you were born:'
day = gets.chomp.to_i
puts 'Input the hour you were born:'
hour = gets.chomp.to_i
puts 'Input the minute you were born:'
minute = gets.chomp.to_i
puts 'Input the second you were born:'
sec = gets.chomp.to_i
born = Time.local(year,month,day,hour,minute,sec)
puts 'You will be 1 billion seconds old in: ' + (born + 1000000000).to_s
