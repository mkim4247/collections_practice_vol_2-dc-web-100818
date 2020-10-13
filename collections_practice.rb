def begins_with_r(words)
  words.all? { |word| word[0,1] == 'r' }
end

def contain_a(words)
  words.filter { |word| 
    word.each_char.any? { |char| char == 'a'}
  }
end

#use filter to find all words that start with 'wa'
#use first to only return the first filtered element
def first_wa(words)
  list = words.select { |word| word[0,2] == 'wa' }
  return list.first
end

def remove_non_strings(array)
  array.select { |element| element.class == String}  
end

def count_elements()