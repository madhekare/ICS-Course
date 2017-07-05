def shuffle_alpha unshuffled_array
  recursively_shuffle unshuffled_array, []
end

def re_name_music_file shuffled_array
  w = File.open 'music.txt', 'w'
  w.write(shuffled_array.join(''))
  w.close
  File.rename('music.txt', 'music.m3u')
end

def get_music
    name = 'music.txt'
    f = File.open name, 'r'
    music = f.readlines
    return music
end

def recursively_shuffle unshuffled_array, shuffled_array
  if unshuffled_array.length != 0
    w = unshuffled_array[rand(unshuffled_array.length)]
    shuffled_array.push w
    unshuffled_array.delete w
recursively_shuffle unshuffled_array, shuffled_array
  else
    return shuffled_array
  end
end

shuffled_array = shuffle_alpha get_music
puts re_name_music_file shuffled_array
