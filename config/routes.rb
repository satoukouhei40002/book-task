Rails.application.routes.draw do
  get '/read', to: 'reads#index'
end
