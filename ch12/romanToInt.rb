def roman_int roman
  array = [['I',1],['IV',4],['V',5],['IX',9],['X',10],['XL',40],['L',50],['XC',90],['C',100],['CM',900],['M',1000]]
  n = 0
  chosenNumber = 0
  while n < roman.length
    numb = 0
    numb2 = 0
    numb3 = 0
    array.each do |(x,y)|
      if roman[n] == x
        numb = y
      end
    end
    array.each do |(z,t)|
      if roman[n+1] == z
        numb2 = t
      end
    end
      if numb >= numb2
        chosenNumber += numb
        n= n - 1
      else
        array.each do |(l,m)|
          if roman[n..n+1] == l
            numb3 = m
            chosenNumber += numb3
          end
        end
      end
      n = n + 2
    end

    if chosenNumber == 0
      puts 'not a valid Roman number'
    else
      puts chosenNumber
    end


end

puts 'Please enter a roman number that you want to be converted to an integer:'
number = gets.chomp.upcase
puts roman_int number
