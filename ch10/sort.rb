def sort_alpha unsorted_array
  recursively_sort unsorted_array, []
end

def get_words
words = []
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
    unsorted_array.each do |w|
      if minw > w
        minw = w
      else
        minw = minw
      end
    end
    sorted_array.push minw
    unsorted_array.delete minw
recursively_sort unsorted_array, sorted_array
  else
    return sorted_array
  end
end

puts sort_alpha get_words
