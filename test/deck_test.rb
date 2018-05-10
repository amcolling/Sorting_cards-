require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require './lib/deck'


class DeckTest < Minitest::Test
  def test_it_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal [card_1, card_2, card_3], deck.cards
  end

  def test_deck_count
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal 3, deck.count(3)
  end
end

  # def test_sorting_the_deck
  #   card_1 = Card.new("4","Hearts")
  #   card_2 = Card.new("3", "Clubs")
  #   card_3 = Card.new("5", "Diamonds")
  #   deck = Deck.new([card_1, card_2, card_3])
  #   assert_equal [card_2, card_1, card_3], deck.test_sorting_the_deck
  # end
# In this iteration, we will start to add some algorithmic complexity. We are going to add to the deck object the ability to sort the cards based on their value from lowest to highest. (Assume that you won’t have two cards of the same value with different suits.)
#
# Ruby has built in methods for sorting. You are NOT allowed to use any of these built in sorting methods.
#
# The interaction pattern will look like this:
#
#
# deck.sort
# => [card_2, card_1, card_3]
