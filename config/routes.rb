Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # all tasks
  get "tasks", to: "tasks#index"
  
  # add new task
  get "tasks/new", to: "tasks#new", as: :task_new
  post "tasks", to: "tasks#create"

  # edit task
  get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "tasks/:id", to: "tasks#update"

  # show page
  get "tasks/:id", to: "tasks#show", as: :task

end
