n = 0
while true
  response = gets.chomp
if response != response.upcase
  n=0
  puts 'HUH?!  SPEAK UP, SONNY!'
else
  if response == 'BYE'
    n = n+1
    puts 'WHAT???'
    if n == 3
      puts 'BYE SONNY'
      break
    end 
  else
    n=0
    puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!'
  end
end
end
