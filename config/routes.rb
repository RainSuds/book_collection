Rails.application.routes.draw do
  
  root "user_books#index"

  resources :books do
    member do
      get 'delete'
    end
  end

  resources :users
  resources :user_books
end

