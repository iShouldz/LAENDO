Rails.application.routes.draw do
  devise_for :users

  # Permitindo acesso apenas para usuários autenticados nas ações de criar e editar posts
  authenticate :user do
    resources :posts, only: [:new, :create, :edit, :update] do
      resources :comentarios, only: [:update, :destroy]
    end
    resource :my_account
  end

  # Ações index e show ficam acessíveis para todos os usuários, mesmo não autenticados
  resources :posts, only: [:index, :show] do
    resources :comentarios, only: [:index, :show, :create, :new]
  end

  root 'home#index'
  get 'home/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
