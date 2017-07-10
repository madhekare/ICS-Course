def birthdays names
birthday_hash={}
File.readlines('birthdays.txt').each do |l|
      ind = l.index('  ') - 2
      s = l[0..ind]
      birthday_hash[s] = l[(ind + 4)..(l.length - 7)]
  end
  if birthday_hash.has_key? names
    puts 'Their next birthday is on: ' + birthday_hash[names]
  else
   puts 'This name is not in your list of birthdays!'
  end
end

puts 'Please enter a Name: '
name = gets.chomp
puts birthdays name



#Couldn't figure out how to determine the year:
#time = birthday_hash[names]
#month = time[0..3].downcase.to_s
#day = time[4].to_i
#year = '2017'.to_i
#puts Time.local(year,month,day)
#if Time.new <= Time.local(year,month,day)
#  puts birthday_hash[names] + '2017'
#else
#  puts birthday_hash[names] + '2018'
#end
