Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]

  get 'study' => 'posts#study'
  get 'sport' => 'posts#sport'
  get 'job' => 'posts#job'
  get 'art' => 'posts#art'
  get 'bed' => 'posts#bed'
  get 'other' => 'posts#other'
  get 'top' => 'posts#top'
  get 'home' => 'posts#home'
  get 'bot' => 'posts#bot'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :chats, only: [:create] do
     
  end
    resources :likes, only: [:create, :destroy]
  end

  root 'posts#home'
end
