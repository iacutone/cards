Rails.application.routes.draw do
  resources :decks
  root to: 'cards#index'
end
