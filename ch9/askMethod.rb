def ask question
  while true
    puts question
    response = gets.chomp.downcase
    if response == 'yes'
      return true
    end
    if response == 'no'
      return false
    end
  end
end

  puts 'Hello, and thank you for...'
  puts
  ask 'Do you like eating tacos?' # Ignore this return value
  ask 'Do you like eating burritos?' # And this one
  wets_bed = ask 'Do you wet the bed?' # Save this return value
  ask 'Do you like eating chimichangas?'
  ask 'Do you like eating sopapillas?'
  puts 'Just a few more questions...'
  ask 'Do you like drinking horchata?'
  ask 'Do you like eating flautas?'
  puts
  puts 'DEBRIEFING:'
  puts 'Thank you for...'
  puts
  puts wets_bed