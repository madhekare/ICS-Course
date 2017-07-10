def sort_alpha unsorted_array
  recursively_sort unsorted_array, []
end

def get_words
words = []
puts 'Please enter words on different lines and then press enter twice when you are done.'
  while true
    n = gets.chomp
    if n != ''
      words.push n
    else
      return words
      break
    end
  end
end

def recursively_sort unsorted_array, sorted_array
  if unsorted_array.length != 0
  minw = unsorted_array[0]
  n = 0
    unsorted_array.each_with_index do |w,i|
      if minw > w
        minw = w
        n = i
      end
    end
    sorted_array.push minw
    unsorted_array.delete_at n
recursively_sort unsorted_array, sorted_array
  else
    return sorted_array
  end
end

puts sort_alpha get_words
