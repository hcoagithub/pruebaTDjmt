Rails.application.routes.draw do
  get 'home', to: "pages#home"
  get 'terminos_condiciones', to: "pages#terminos_condiciones"
  get 'pages/terminos_condiciones'
  resources :machines
  resources :engines
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
