Rails.application.routes.draw do
  devise_for :users

  root to: "reads#index"
  resources :reads
  

end
