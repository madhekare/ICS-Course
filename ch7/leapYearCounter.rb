puts 'Enter the beginning year: '
start = gets.chomp.to_i
puts 'Enter the ending year: '
ending = gets.chomp.to_i
while start != (ending + 1)
if start % 100 == 0 && start % 400 == 0
    puts start
    start = start + 1
else
  if start % 4 == 0 && start % 100 != 0
    puts start
    start = start + 1
  else
  start = start + 1
  end
end
end
