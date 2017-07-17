def log string_description, &block
  puts 'Beginning ' + string_description
  block.call
end

log 'outer block' do
   n=1
   bstatus=false
   log 'some little block' do
     3.times do
       n=n*3
    end
   end
   puts 'some little block finished and returned: ' + n.to_s
   log 'another block' do

     puts 'another block finished and returned: YES!'
   end
puts 'We are done with outer block! returned: '+bstatus.to_s
end
