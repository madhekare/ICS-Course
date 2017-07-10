def shuffle_alpha unshuffled_array
  recursively_shuffle unshuffled_array, []
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

def recursively_shuffle unshuffled_array, shuffled_array
  if unshuffled_array.length != 0
    w = rand(unshuffled_array.length)
    shuffled_array.push unshuffled_array[w]
    unshuffled_array.delete_at w
recursively_shuffle unshuffled_array, shuffled_array
  else
    return shuffled_array
  end
end

puts shuffle_alpha get_words
