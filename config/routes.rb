Rails.application.routes.draw do
  get 'mypage' => 'users#me'
  post 'login' => 'users#create'
  delete 'login' => 'usersd#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :users
  resources :boards
  resources :comments, only: %i[create destroy]
end
