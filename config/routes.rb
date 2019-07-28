Rails.application.routes.draw do
  root 'items#index'
  devise_for :users, controllers: {
    registrations:     'users/registrations',
    passwords:          'users/passwords',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  devise_scope :user do
    get "sign_up/index", to: "users/registrations#index" 
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users do
    get "logout" ,on: :collection
    member do
      get "posting_item"
      get "sold_item"
      get "buyed_item" 
    end
  end
   #mypage user_edit
    get "profile",                 to: "mypage#profile",as: :profile
    patch "profile_update",         to: "mypage#profileupdate",as: :profile_update
    get "address",                 to: "mypage#address",as: :address
    patch "address_update",         to: "mypage#addressUpdate",as: :address_update
    get "pay_way",                 to: "mypage#pay_way",as: :pay_way
    patch "pay_way_update",         to: "mypage#pay_way_update",as: :pay_way_update

   #カテゴリー
    resources :categories ,only: [:index,:show]

  #ブランド
    get "brands",to: "brand#index", as: :brand
    get "brands/search",to: "brand#search", as: :brand_search
    get "brands/show", to: "brands#show", as: :brand_show
  #クレジット
    resource :credit, only: [:show,:new,:create,:delete]
    
    resources :items ,only: [:index,:show,:new,:create,:edit,:update,:destroy] do
      collection do
        get "get_category_children", defaults:{ format: "json"}
        get "get_category_grandchildren",defaults:{ format:"json"}
        post "get_delete",defaults:{ format:"json"}
        get "search"
      end
      member do
        patch "update_status"
        get "confirmation"
        post "pay"
      end
    end  

    resource :comment, only: [:create,:destroy]

end