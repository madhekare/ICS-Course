wordlist = []
puts 'Please type in the words you want to sort. (each on a new line)'
while true
  n = gets.chomp
  if n != ''
    wordlist.push n
  else
    break
  end
end

puts wordlist.sort
