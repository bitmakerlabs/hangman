require "test/unit"
require_relative "hangman"

class HangmanTest < Test::Unit::TestCase

  def test_initialize_starts_with_eight_chances
    h = Hangman.new("ggdfdsa")
    assert_equal 8, h.chances
  end

  def test_initialize_has_an_empty_board_of_the_right_size 
    h = Hangman.new("hello")
    assert_equal "_ _ _ _ _" , h.board

    h = Hangman.new("khurram")
    assert_equal "_ _ _ _ _ _ _" , h.board
  end

  def test_initialize_accepts_and_uses_the_word
    word = "hello"
    h = Hangman.new(word) # -> def initializ
    assert_equal word, h.word
  end

  def test_initialize_starts_with_no_guesses

  end

  def test_game_ends_when_last_letter_is_guessed_correctly
    #WTF???
    word = "hello"
    board = "h e l l _"
    guess = 'o'
    hangman = Hangman.new(word)
    hangman.board = board
    # DONE WITH SETUP - hopefully
    # guess 'o' (the final letter)
    hangman.guess!(guess)
    # game ends 
    assert hangman.won?
    # player wins

  end


end