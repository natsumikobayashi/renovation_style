Rails.application.routes.draw do

  #顧客用
  devise_for :customer, skip:[:passwords], controllers: {
    registrations: "customer/registrations",
    sessions: 'customer/sessions'
  }

  root to: "customer/homes#top"

  namespace :customer do
    resource :mypage, only: [:show, :edit, :update, :index] do
      patch 'subscribe' => 'mypages#subscribe'
    end

    post 'enquiries/new' => 'enquiries#new'
    resources :enquiries, only: [:index, :show, :new, :create] do
      post 'confirm' => 'enquiries#confirm'
    end
    resources :rooms, only: [:show, :index]
    resources :favorites, only:[:index]
    post '/favorite/:room_id' => 'favorites#create', as: 'favorite'
    delete '/favorite/:room_id' => 'favorites#destroy', as: 'unfavorite'
  end

  #リフォーム会社用
  devise_for :managers, skip:[:passwords], controllers: {
    registrations: "manager/registrations",
    sessions: 'manager/sessions'
  }
    namespace :manager do
    get '/top' => 'homes#top'
    patch 'mypage/subscribe' => 'mypages#subscribe'
     resource :mypage, only:[:show, :update] do
       get 'confirm' => 'mypages#confirm'
     end
    resources :enquiries, only:[:index, :update, :show]
    post 'rooms/confirm' => 'rooms#confirm'
    delete 'rooms/:room_image_id/delete_floor_image' => 'rooms#delete_floor_image'
    delete 'rooms/:room_image_id/delete_room_image' => 'rooms#delete_room_image'
    resources :rooms, only:[:index, :new, :create, :show, :edit, :destroy, :update]
    resources :room_images, only: [:destroy]
    resources :floor_images, only: [:destroy]

  end

  #管理者用
  devise_for :observers, skip:[:passwords, :registrations], controllers: {
    sessions: "observer/sessions"
  }

  namespace :observer do
    get 'homes/top' => 'homes#top'
    resources :managers, only:[:index]
    resources :customers, only:[:index]
    resources :taste_tags, only:[:index, :create, :edit, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
