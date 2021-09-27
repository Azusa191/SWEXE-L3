Rails.application.routes.draw do
  resources :tweets
  root 'tweets#index'
  delete 'tweets/:id', to: 'tweets#destroy'
end
