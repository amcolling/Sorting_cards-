require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'

class RoundTest < Minitest::Test
  def test_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal deck, round.deck
  end

  def test_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal [], round.guesses
  end

  def test_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end

  def test_record_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("3 of Hearts")
    assert_equal 1, round.guesses.count
  end


  def test_feedback
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("3 of Hearts")
    assert_equal 1 , round.guesses.count
    # assert_equal "Correct!", round.guesses.first.feedback
  end

  def test_number_correct
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = Guess.new("3 of Hearts", card_1)
    round.record_guess("3 of Hearts")
  end

  def test_new_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess("Jack of Diamonds")
    
  end



end


                      # card_1 = Card.new("3","Hearts")
                      # => card_2 = Card.new("4", "Clubs")
                      # deck = Deck.new([card_1, card_2])
                      # round = Round.new(deck)
                      # round.deck
                      # => #<Deck:0x007ffdf181b9c8 @cards=[...]>
                      # round.guesses
                      # => []
                      # round.current_card
                      # => #<Card:0x007ffdf1820a90 @value="3", @suit="Hearts">
                      # round.record_guess("3 of Hearts")
                      # => => #<Guess:0x007ffdf19c8a00 @card=#<Card:0x007ffdf1820a90 @value="3", @suit="Hearts">, @response="3 of Hearts">
                      # round.guesses.count
                      # => 1
                      # round.guesses.first.feedback
                      # => "Correct!"
                      # round.number_correct
                      # => 1
# round.current_card
# => #<Card:0x007ffdf1820a90 @value="4", @suit="Clubs">
# round.record_guess("Jack of Diamonds")
# => #<Guess:0x007ffdf19c8a00 @card=#<Card:0x007ffdf1820a90 @value="4", @suit="Clubs">, @response="Jack of Diamonds">
# round.guesses.count
# => 2
# round.guesses.last.feedback
# => "Incorrect."
# round.number_correct
# => 1
# round.percent_correct
# => 50
