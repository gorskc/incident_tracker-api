Rails.application.routes.draw do
  resources :incidents, only: [:index, :edit, :show, :new, :create]
  resources :injuries, only: [:index, :edit, :show, :new, :create]
  resources :employees, only: [:index, :edit, :show, :new, :create]
end
