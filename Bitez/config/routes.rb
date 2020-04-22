Rails.application.routes.draw do
  get 'home/index'
  get 'styles/show'
  
  resources :styles do
    resources :items
  end
  
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
