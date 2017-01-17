# Complete Me
Amy and Kyle's autocomplete project for Turing.

User can enter the beginning of a word into command line to receive suggestions on how to finish the word. Autocomplete populates entire English dictionary into a tries data structure and has the functionality to delete words if needed. Autocomplete function learns and sorts suggestions based on number of times it was previously selected. 

Tech Stack: Ruby, MiniTest, SimpleCov

Follow these steps to try it out in the command line:

1. Clone the repository: git clone https://github.com/kheppenstall/complete_me.git
1. `cd` into the directory `complete_me`
1. Start an irb session by typing `irb` in the command line.
1. Type the following commands into the irb session:
    
    ```ruby
    
    require './lib/complete_me'
    completion = CompleteMe.new
    dictionary = File.read('./test/dictionaries/words.txt')
    completion.populate(dictionary)
    
    ```
1. Type `completion.suggest(fragment)` to see your suggested completions to the fragment.
(for example, `completion.suggest('aar') => ["aardvark", "aardwolf"]`

Follow these steps to run the tests:

1. Clone the repository: git clone https://github.com/kheppenstall/complete_me.git
1. `cd` into the directory `complete_me`
1. Install rake gem: `gem install rake` in the command line.
1. Install minitest gem: `gem install minitest` in the command line.
1. Run `rake` in the command line to run test suite.
