Rails.application.routes.draw do
  resources :incidents do
    resources :injuries, only: [:index, :edit, :show, :new, :create]
    resources :employees, only: [:index, :edit, :show, :new, :create]
  end

  resources :employees do
    resources :incidents, only: [:index, :edit, :show, :new, :creat]
  end

  root to: "home#index"
end
