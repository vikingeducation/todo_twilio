Rails.application.routes.draw do

  root 'tasks#index'
  resources :tasks

  patch "/tasks/:id/disable" => 'tasks#disable', as:'disable_task'
  patch "/tasks/:id/enable" => 'tasks#enable', as:'enable_task'

  get "/text/:id" => 'texts#send_sms', as:'send_sms'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end