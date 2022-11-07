Rails.application.routes.draw do
  devise_for :users

  root 'events#index'

  resources :events do 
    post 'attend', on: :member
  end

end
