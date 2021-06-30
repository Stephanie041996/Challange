# frozen_string_literal: true

class Word < ApplicationRecord
  validates :word, uniqueness: true, length: { maximum: 35 }
  validates :slug, uniqueness: true
  default_scope -> { order(created_at: :desc) }
  before_validation :generate_slug

  def to_param
    slug
  end

  def generate_slug
    self.slug ||= word.parameterize
  end

  def sub_word
    algo(word)
  end

  def sub_length
    sub_word.to_s.length
  end

  def algo(string)
    map = {}
    string_chars = string.chars
    start = 0
    i = 0
    result = 0
    while i < string_chars.length

      if map[string_chars[i]] && (map[string_chars[i]] >= start)
        start = map[string_chars[i]] + 1
      else
        map[string_chars[i]] = i
        i += 1

      end
      next unless i - start > result

      result = i - start
      longest_sub_word = string[start..i - 1]

    end

    longest_sub_word
  end
end
