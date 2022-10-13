Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'tarot#index', controller: 'tarot'

  get 'choose_cards', action: :cards, controller: 'tarot', as: 'choose_tarot_cards'
  get 'perform_reading', action: :reading, controller: 'tarot', as: 'perform_tarot_reading'
end
