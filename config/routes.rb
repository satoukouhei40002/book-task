Rails.application.routes.draw do
  # get '/read', to: 'reads#index'
  root to: "reads#index"
end
