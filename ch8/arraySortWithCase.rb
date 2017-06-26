wordlist = []

while true
  n = gets.chomp
  if n != ''
    wordlist.push n
  else
    break
  end
end




puts wordlist.sort do |x,y| x.upcase <=> y.upcase end
