def clock &block
block.call
end


clock do


  hour = Time.new.hour
  if hour - 12 >= 0
    hour = hour - 12
  end

  hour.times do
  puts 'DONG!'
  end
end
