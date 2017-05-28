Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  resources :conversations, only: [:index, :show, :destroy]

  resources :messages, only: [:new, :create]

  get("/sign-up", {:controller => "devise", :action => "new" })

end
