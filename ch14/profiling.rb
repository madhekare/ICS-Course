def profile block_description, m_profile, &block
  if m_profile
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  end
end

m_profile = false
profile '25000 doublings', m_profile do
  number = 1
  25000.times do
  number = number + number
end
puts "#{number.to_s.length} digits"
# That's the number of digits in this HUGE number.
end

profile 'count to a million', m_profile do
  number = 0
  1000000.times do
  number = number + 1
end
end
