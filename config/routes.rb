Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  get 'home/index'

  get '/' => 'home#index'
  get '/profile' => "home#profile"

  post '/create_post_remote' => "home#create_post_remote"
  post '/comment_remote' => "home#comment_remote"
  post '/create_comment_remote' => "home#create_comment_remote"
  post '/like' => "home#like"
  
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  root to: "home#show"

end
