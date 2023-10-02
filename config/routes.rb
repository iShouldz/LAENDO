Rails.application.routes.draw do
  devise_for :users

  authenticate :user do
    root 'home#index'

    get 'home/index'
    resources :posts do
      resources :comentarios
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
