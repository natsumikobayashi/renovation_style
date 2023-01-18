Rails.application.routes.draw do

  namespace :observer do
    get 'taste_tags/index'
  end
  namespace :observer do
    get 'customers/index'
  end
  namespace :observer do
    get 'admins/index'
  end
  namespace :observer do
    get 'homes/top'
  end
  namespace :admin do
    get 'rooms/index'
    get 'rooms/new'
    get 'rooms/confirm'
    get 'rooms/show'
  end
  namespace :admin do
    get 'enquiries/index'
    get 'enquiries/show'
  end
  namespace :admin do
    get 'managers/show'
    get 'managers/confirm'
  end
  namespace :admin do
    get 'homes/top'
  end
  namespace :public do
    get 'rooms/index'
    get 'rooms/show'
  end
  namespace :public do
    get 'enquiries/index'
    get 'enquiries/show'
    get 'enquiries/new'
    get 'enquiries/confirm'
  end
  namespace :public do
    get 'customers/show'
    get 'customers/edit'
    get 'customers/index'
  end
  namespace :public do
  end
  #顧客用
  devise_for :customers, skip:[:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  root to: "public/homes#top"

  #リフォーム会社用
  devise_for :managers, skip:[:passwords], controllers: {
    registrations: "admin/registrations",
    sessions: 'admin/sessions'
  }
  #管理者用
  devise_for :observers, skip:[:passwords, :registrations], controllers: {
    sessions: "observer/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
