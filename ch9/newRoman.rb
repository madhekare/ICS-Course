def new_Roman input
  inp = input
  str = []
  if inp <= 0
    return 'Not Allowed'
  end
abc = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4,1]
letters = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]

letters.each.zip(abc.each) do |l,a|

q = inp / a
r = inp % a

    if q >= 1
      str.push l* (q)
      inp = r
    else
      str.push ''
      inp = r
    end
  end
return str.join('')
end

puts 'Please enter a number that you want to be converted to New Roman Numerals upper limit = 3000'
response = gets.chomp.to_i
puts new_Roman response
