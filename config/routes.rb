Rails.application.routes.draw do
  devise_for :managers
  devise_for :observers
  devise_for :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
