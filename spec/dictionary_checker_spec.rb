require 'rspec'
require 'dictionary_checker'

describe DictionaryChecker do
  describe "#get_non_words" do
    it "returns non-words from string for standard phrases" do
      test_phrase = "sun grass smile beach asdf ghjk zxcv bnmq"

      dictionary_checker = DictionaryChecker.new
      expect(dictionary_checker.get_non_words(test_phrase)).to eql(["asdf", "ghjk", "zxcv", "bnmq"])
    end

    it "checks for singlular versions of plural words" do
      test_phrase = "puppies kittens notaword"

      dictionary_checker = DictionaryChecker.new
      expect(dictionary_checker.get_non_words(test_phrase)).to eql(["notaword"])
    end
  end
end
