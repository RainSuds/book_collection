Rails.application.routes.draw do
  # Root should go to the new view for the associative entity (UserBooks index)
  root "user_books#index"

  resources :books do
    member do
      get 'delete'
    end
  end

  resources :users
  resources :user_books
end

