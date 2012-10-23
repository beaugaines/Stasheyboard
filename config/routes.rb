Stasheyboard::Application.routes.draw do

  get "statuses/index"

  get "statuses/show"

  get "statuses/create"

  devise_for :admins do
    get '/devise/registrations/new', to: 'devise/registrations#new', as: '/polkadotmonkey'
  end


  namespace :admin do
    get '', to: 'dashboard#index', as: '/dashboard'
  end
  
  root :to => "application#admin_sign_in_redirect"

  resources :services do
    resources :statuses
  end

end
