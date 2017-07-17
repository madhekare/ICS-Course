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

class Array
  def shuffle_alpha
    recursively_shuffle self, []
  end

  def recursively_shuffle arr, shuffled_array
    if arr.length != 0
      w = rand(arr.length)
      shuffled_array.push arr[w]
      arr.delete_at w
  recursively_shuffle arr, shuffled_array
    else
      return shuffled_array
    end
  end
end

puts get_words.shuffle_alpha
