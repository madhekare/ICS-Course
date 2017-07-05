def birthdays names
birthday_hash={}
name = 'birthdays.txt'
File.open name, 'r' do |l|
  n = 0
    while n < IO.readlines('birthdays.txt').size
      str = l.readline
      ind = str.index('  ') - 2
      s = str[0..ind]
      birthday_hash[s] = str[(ind + 4)..(str.length - 7)]
      n = n + 1
   end
end
puts 'Their next birthday is on: ' + birthday_hash[names]
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
