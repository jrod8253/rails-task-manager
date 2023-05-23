Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Create
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # READ all
  get "tasks", to: "tasks#index"

  # READ One
  get "tasks/:id", to: "tasks#show", as: "task"

  # Update
  get "tasks/:id/edit", to: "tasks#edit", as: "task_edit"
  patch "tasks/:id", to: "tasks#update"

  # Delete
  delete "tasks/:id", to: "tasks#destroy", as: "task_delete"
end
