require 'minitest/autorun'
require 'minitest/pride'
require './lib/sorting_cards'
require './lib/guess'


class GuessTest < Minitest::Test
  def test_it_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end

  def test_has_a_card
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Card, guess.card
  end

  def test_guess_response
    card = Card.new("Ace", "Spades")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "10 of Hearts", guess.response
  end

  def test_guess_correct?
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal true, guess.correct?
  end

  def test_guess_incorrect?
    card = Card.new("10", "Hearts")
    guess = Guess.new("2 of Diamonds", card)
    assert_equal false, guess.incorrect?
  end

  def test_guess_feedback
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "Correct!", guess.feedback
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)
    assert_equal "Incorrect", guess.feedback
  end

end
