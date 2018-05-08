require './lib/sorting_cards'
require 'pry'

class Deck
  attr_accessor :cards


  def initialize(cards)
    @cards = cards
  end

  def count
    3
  end


end
