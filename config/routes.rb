Rails.application.routes.draw do
  resources :books do
    member do
      get 'confirm_delete'
    end
  end

  # get 'confirm_destroy', to: 'books#confirm_destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # sets default landing page as "books"
  root "books#index"

end
