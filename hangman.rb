class Hangman

  # This class will be used to run an instance of a hangman game
  # It is only concerned with one run through of the game
  # It is not responsible for human interaction

  attr_accessor :word
  attr_accessor :chances
  attr_accessor :board

  def initialize(word)
    @word = word
    @board = '_ _ _ _ _'
    @chances = 8
    # word = randomly select a word from an array
    puts "Hangman game!"
  end
  
  def guess!(letter)
  end

  def won?
    # true or false
  end


end


