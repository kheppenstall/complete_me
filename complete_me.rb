require 'pry'
require_relative "WordNode"

class CompleteMe
  attr_accessor :root, :completed_insertions
    
  def initialize
    @root = []
    @completed_insertions = 0
    @root_link = Hash.new
  end
    
  def insert(word)
    word.to_s
    word_array = word.chars
    if @root.include?(word_array[0])
      @root_link = {@root[word_array[0]] => word_array[1..-1]}
      word_array.drop(1) 
      binding.pry
    end
    word_array = WordNode.new(word)
    @completed_insertions += 1
    binding.pry
  end

end

trial = CompleteMe.new
trial.insert("hello")
trial2 = CompleteMe.new
trial2.insert("hero")
