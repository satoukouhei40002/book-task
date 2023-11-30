Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: "reads#index"
  resources :reads
=======

  root to: "reads#index"
  resources :reads
  

>>>>>>> c3fe7d980081af42cf43c67ed98a1140d48683c3
end
