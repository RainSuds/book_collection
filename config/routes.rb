Rails.application.routes.draw do
  
  # Make the books index the root so system specs that visit root_path find the books list
  root "books#index"

  resources :books do
    member do
      get 'delete'
    end
  end

  resources :users
  resources :user_books
end

