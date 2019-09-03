Rails.application.routes.draw do
  resources :drinks
  resources :moneys
  resources :deposits
  root to: 'stores#index', as: 'store'
end
