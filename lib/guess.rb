require './lib/card'

class Guess
  attr_accessor :response,
                :card


  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    if @response == card.correct_card
      true
    else
    end
  end

  def feedback
    if @response == card.correct_card
      "Correct!"
    else
      "Incorrect"
    end
  end





end
