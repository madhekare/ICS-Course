class Die
  def initialize
# I'll just roll the die, though we could do something else
# if we wanted to, such as setting the die to have 6 showing.
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def cheat
    puts 'what number? (1-6)'
    num = gets.chomp.to_i
    if 1 <= num && num <=6
    @number_showing = num
    else
    puts 'Number needs to be from 1-6!'
    end
  end

  def showing
    @number_showing
  end
end

puts Die.new.showing
puts Die.new.cheat
