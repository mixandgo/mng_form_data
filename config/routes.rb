Rails.application.routes.draw do
  devise_for :users
  get '/dashboard' => 'site#dashboard'
  root 'site#index'
end
