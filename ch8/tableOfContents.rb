chlist = ['Ch1: Getting Started','Ch2: Numbers','Ch3: Letters']
pglist = ['2', '4', '6']
line_width = 40
puts 'Table of Contents'.center(line_width)
# works w/o each
chlist.each.zip(pglist.each) do |ch,pg|
  puts ch.ljust(line_width/2) + ('page '+ pg).rjust(line_width/2)
end
