Rails.application.routes.draw do
  get 'tasks/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Read all
  get 'tasks', to: 'tasks#index'
  # Create
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  # Read one
  get 'tasks/:id', to: 'tasks#show', as: :task
end
