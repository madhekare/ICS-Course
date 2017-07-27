def clock &block
  hour = Time.new.hour
  if hour - 12 >= 0
    hour = hour - 12
  end
  hour.times do
block.call
end
end


clock do
  puts 'DONG!'
end
