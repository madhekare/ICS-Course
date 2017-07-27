def log string_description, &block
  puts 'Beginning ' + string_description
  num=block.call
  puts string_description + ' finished and returned: ' + num.to_s
end

bstatus=false
log 'outer block' do
   n=1
   log 'some little block' do
     3.times do
       n=n*3
    end
    n
   end
   log 'another block' do
     bstatus
   end
   bstatus = true
end
