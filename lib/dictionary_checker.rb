require 'active_support/inflector'
require 'pry'

class DictionaryChecker
  def initialize
    @count = 0
    @dictionary = File.foreach('/usr/share/dict/words').map do |word|
      word.strip.downcase
    end
  end

  def get_non_words(compliment)
    words       = compliment.to_standardized_array
    found_words  = []

    words.each do |word|
      found_words << word if in_dictionary?(word)
    end

    # check singular forms for initial non-words since most plural nouns aren't listed in dictionary
    (words - found_words).each do |word|
      found_words << word if in_dictionary?(word.singularize)
    end

    binding.pry
    words - found_words
  end

  private

  def in_dictionary?(target_word)
    @dictionary.each do |dictionary_word|
      @count += 1;
      return true if dictionary_word == target_word
    end
    false
  end
end
