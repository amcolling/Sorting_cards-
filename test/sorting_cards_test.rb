require 'minitest/autorun'
require 'minitest/pride'
require './lib/sorting_cards'

class SortingCardsTest < Minitest::Test
  def test_it_exists
    sort_cards = SortingCards.new
    assert_instance_of SortingCards, sort_cards
  end




end 
