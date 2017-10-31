Rails.application.routes.draw do
  get 'pages/about'

  get 'pages/team'

  get 'pages/contact'

  get 'message', to: 'pages#message'

  get 'decrypt', to: 'pages#decrypt'

  post 'decrypt', to: 'pages#decrypt'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
