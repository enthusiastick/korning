Korning::Application.routes.draw do

  resources :employees, only: [:index, :show]

  resources :products, only: :index

  resources :customers, only: :index

  # ...

end
