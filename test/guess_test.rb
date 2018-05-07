require 'minitest/autorun'
require 'minitest/pride'
require './lib/sorting_cards'
require './lib/guess'


class GuessTest < Minitest::Test
  def test_it_exists
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end

  def test_response
    guess = Guess.new("10 of Hearts", card)
    assert_equal "10 of Hearts", guess.response(respond)
  end

  def test_correct?
    guess = Guess.new("10 of Hearts", card)
    assert_equal true , card.correct?
  end

  def test_feedback
    guess = Guess.new("10 of Hearts", card)
    assert_equal "Correct!", card.feedback(response)
  end 


end

# guess.card
# => #<Card:0x007ffdf1820a90 @value="10", @suit="Hearts">
# guess.response
# => "10 of Hearts"
# guess.correct?
# => true
# guess.feedback
# => "Correct!"
