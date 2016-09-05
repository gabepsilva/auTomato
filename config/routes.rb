Rails.application.routes.draw do



  devise_for :users
  resources :logs
  resources :step_statuses
  get 'landing/new'

  get 'landing/create'

  resources :projects
  resources :staffs
  resources :steps,   :except => [:index, :new]
  resources :changes
  root to: 'landing#index'

  get 'steps/new/:change_id', to: 'steps#new', as: 'new_step'

  post 'steps/:id/log', to: 'steps#upload', as: 'steps_log_upload'

  get 'steps/:id/download/:log', to: 'steps#download', as: 'steps_download'


#  get 'steps/edit/:id', to: 'steps#edit', as: 'edit_step'
#  get 'steps/', to: 'steps#new', as: 'steps'
#  get 'steps/:id', to: 'steps#show', as: 'show_step'

#  post 'steps/', to: 'steps#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
