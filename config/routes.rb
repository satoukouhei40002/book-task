Rails.application.routes.draw do
  devise_for :users
<<<<<<< Updated upstream

    root to: "reads#index"

    resources :users, only: :show
=======
  root to: "reads#index"
  resources :reads
  
>>>>>>> Stashed changes
end
