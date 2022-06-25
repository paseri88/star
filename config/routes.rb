Rails.application.routes.draw do
  devise_for :users
  get 'posts/new' => 'posts#new'
  post 'posts' => 'posts#create'
  get 'posts/:id' => 'posts#show', as: 'post'
  patch 'posts/:id' => 'posts#update'
  delete 'posts/:id' => 'posts#destroy' #ここに挿入！！！
  get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :chats, only: [:create]
  end

  root 'posts#index'
  end
end
