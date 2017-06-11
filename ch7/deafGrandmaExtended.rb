n = 0
while true
  response = gets.chomp
if response != response.upcase
  puts 'HUH?!  SPEAK UP, SONNY!'
else
  if response == 'BYE'
    n = n+1
    if n == 3
      break
    end
  else
    puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!'
  end
end
end
