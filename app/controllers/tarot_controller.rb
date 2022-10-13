class TarotController < ApplicationController
  def index
  end

  def cards
    @chosen_cards = session[:chosen_cards] = AiTemplate.run!(token: 'choose_tarot_cards', params: { number: params.permit![:number] })
  end

  def reading
    @reading = AiTemplate.run!(token: 'interpret_tarot_cards', params: {cards_to_interpret: params.permit![:cards] })
  end
end
