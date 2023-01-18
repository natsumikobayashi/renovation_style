Rails.application.routes.draw do

  #顧客用
  devise_for :customers, skip:[:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  root to: "public/homes#top"

  scope module: :public do
    patch 'customers/subscribe' => 'customers#subscribe'
    resource :customers, only: [:show, :edit, :update]
    get 'enquiries/confirm' => 'enquiries#confirm'
    resources :enquiries, only: [:index, :show, :new, :create]
    resources :rooms, only: [:show, :index]
  end

  #リフォーム会社用
  devise_for :managers, skip:[:passwords], controllers: {
    registrations: "admin/registrations",
    sessions: 'admin/sessions'
  }
    namespace :admin do
    get 'rooms/index'
    get 'rooms/new'
    get 'rooms/confirm'
    get 'rooms/show'
    get 'enquiries/index'
    get 'enquiries/show'
    get 'managers/show'
    get 'managers/confirm'
    get 'homes/top'
  end

  #管理者用
  devise_for :observers, skip:[:passwords, :registrations], controllers: {
    sessions: "observer/sessions"
  }

  namespace :observer do
    get 'taste_tags/index'
    get 'customers/index'
    get 'admins/index'
    get 'homes/top'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
