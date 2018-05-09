require 'pry'
class Card
  attr_accessor :card_value,
                :card_suit


  def initialize(card_value, card_suit)
    @card_value = card_value
    @card_suit = card_suit
  end

  def correct_card
    "#{@card_value} of #{@card_suit}"
  end




end
