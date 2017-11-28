Rails.application.routes.draw do
  root :to => 'questions#index'

  resources :questions do
    resources :answers
  end

  resources :questions do
    resources :comments
  end

  resources :answers do
    resources :answer_comments
  end

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
