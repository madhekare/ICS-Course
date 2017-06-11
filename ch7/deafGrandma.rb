
while true
response = gets.chomp
if response != response.upcase
  puts 'HUH?!  SPEAK UP, SONNY!'
else
  if response == 'BYE'
    break
  else
    puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!'
  end
end
end
