Rails.application.routes.draw do
  # Lire toutes les tasks
  get 'tasks', to: 'tasks#index'

  # Creer une task (2 etapes)
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # Lire une task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # updater une task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # supprimer une task
  delete 'tasks/:id', to: 'tasks#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
