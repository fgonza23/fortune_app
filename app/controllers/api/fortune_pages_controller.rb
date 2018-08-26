class Api::FortunePagesController < ApplicationController
  def fortune_action

    fortunes = [
                "you will live a long life",
                "you will die",
                "you will be rich"
                ]

    @your_fortune = fortunes.sample
    render "fortune_view.json.jbuilder"


  end

  def lotto_action

    possible_numbers = (1..60).to_a.shuffle
    picked_numbers = []

    picked_numbers >> possible_numbers.sample(6)

    @final_numbers = "your number"

    @lotto_numbers 

  end
end
