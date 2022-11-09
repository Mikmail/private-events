Rails.application.routes.draw do
  devise_for :users

  root 'events#index'

  resources :events
  resources :invitations

  get '/users/:id', to:'users#show', as: "user"
  post '/users/:user_id/events/:id', to: "attending_events#create", as: "create_attending_event"
  get '/users/:id/attended_events', to: "users#show_attended_events", as: "show_attended_events"
  delete '/users/:user_id/events/:id', to: "attending_events#destroy", as: "destroy_attending_event"
end
