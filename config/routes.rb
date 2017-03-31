Rails.application.routes.draw do
  resource :main_page, only: [:index, :create]

  root to: 'main_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
