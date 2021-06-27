class Word < ApplicationRecord
  validates :word, presence: true, uniqueness: true, length: { maximum: 35 }
  default_scope -> { order(created_at: :desc) }

 def to_param
      word
    end

def sub_word
  return algo(word)
end

def sub_length
  return algo_length(word)
end

def algo(string)
  map = {}
  string_chars = string.chars
  i = 0
  start = 0
  result = 0
  while i < string_chars.length
    if !map[string_chars[i]]
      map[string_chars[i]] = i
    else
      if result < i-start
        result = i-start
        longest_sub_word = string[start..i-1]
      end
      prev_pos = map[string_chars[i]] 
      start = prev_pos + 1
      map[string_chars[i]] = i 
    end
    i += 1
  end

  if result < i-start
    result = i-start
    longest_sub_word = string[start..i-1]
  end
  longest_sub_word
end


def algo_length(string)
  map = {}
  string_chars = string.chars
  start = 0
  i = 0
  result = 0
  while i < string_chars.length
    if !map[string_chars[i]]
      map[string_chars[i]] = i
    else
      result = result > (i-start) ? result : (i-start) 
      prev_pos = map[string_chars[i]] 
      start = prev_pos + 1 
      map[string_chars[i]] = i 
    end
    i += 1
  end

  result = result > (i-start) ? result : (i-start)
  result
end
end
