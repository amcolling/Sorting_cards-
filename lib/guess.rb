require './lib/sorting_cards'

class Guess
  attr_accessor :response,
                :card,
                :feedback

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    @response == card.correct_card
      true
  end

  def incorrect?
    @response != card.correct_card
    false
  end

  def feedback
    if @response == card.correct_card
      "Correct!"
    else
      "Incorrect"
    end
  end





end
