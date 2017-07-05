puts Time.new
puts Time.local(1998, 11, 20, 11, 36)
puts 'Begins at 1970: '+Time.at((Time.new - Time.local(1998, 11, 20, 11, 36))).to_s
