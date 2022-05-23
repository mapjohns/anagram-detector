# Your code goes here!
require 'pry'
class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        word_letters = @word.split("").sort
        matches = []
        array.each do |word|
            test1 = word.split("").sort
            if test1 == word_letters
                matches << word
            else
                false
            end
        end
        return matches
    end
end