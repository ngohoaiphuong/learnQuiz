LearnQuiz::Application.routes.draw do
  root :to => 'home#index'

  devise_for :users, only: []

  namespace :account, module: 'teacher', defaults: {format: :json} do
    devise_for :users, only: [:session, :registrations]
  end

  namespace :teacher, module: 'teacher', defaults: {format: :json} do
    resources :users, only: [:index, :show, :update, :destroy]
    resources :tests, only: [:create, :index, :show, :update, :destroy]
  end

  namespace :api, module: 'api', defaults: {format: :json} do
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#logout'

    resources :tests, only: [:index, :show]
    resources :results, only: [:create, :index]
  end
end
