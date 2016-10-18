require "pry"

class WordNode
  attr_accessor :links, :word_array

  def initialize(word = " ")
    word.to_s
    @links = Hash.new
    @finished_word = false
    continue_word(word)
    @linked_hash = Hash.new
  end
  
  def continue_word(word)
    word.to_s
    word_array = word.chars
    if word_array.empty?
        @finished_word = true
    elsif !@links[word_array[0]].nil?
        word_array.drop(1)
        # if word_array.empty?
        #     @links.continue_word([])
        # else @links.continue_word(word_array)
        # end
    binding.pry
    else create_new_node(word_array)
    end
  end

  def create_new_node(word)
    @links[word[0]] = word[1..-1]
    word = word.drop(1)
    binding.pry
    link_nodes_down_tree(word)
  end

  def link_nodes_down_tree(word)
    word.each do |letters|
      @links[letters[0]] = word[1..-1] 
      word = word.drop(1)
      add_key_and_link_to_saved_hash(letters[0], word[1..-1])
      link_nodes_down_tree(word)
    end
    @finished_word = true
  end

  def add_key_and_link_to_saved_hash(key, value)
    @linked_hash[key] = value
  end

  def word?
  end

end


