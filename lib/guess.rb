class Guess
  attr_reader :response,
              :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct
    if @response == @card
      true
    else
      false
    end 
  end

  def feedback(response)
    response
  end



end
