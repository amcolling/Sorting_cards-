class Card
  attr_reader :card_value,
              :card_suit

  def initialize(card_value, card_suit)
    @card_value = card_value
    @card_suit = card_suit
  end

  def response(respond)
    @card_value = respond
  end

  def correct?
    true
  end

  def feedback(response)
    response
  end 



end
