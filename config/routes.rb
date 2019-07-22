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
    post "address_update",         to: "mypage#address_update",as: :address_update
    get "pay_way",                 to: "mypage#pay_way",as: :pay_way
    get "pay_way_update",         to: "mypage#pay_way_update",as: :pay_way_update
    get "mail/password",           to: "mypage#mail_password",as: :mail_password
    post "mail/password_update",   to: "mypage#mail_password_update",as: :mail_update

  
   #カテゴリー
    # get "categories", to: "category#index" ,as: :category
    # get  "categories/search", to: "category#search",as: :category_search
    # get "categories/:id", to:"category#show", as: :category_show
    resources :categories ,only: [:index,:show]

  #ブランド
    get "brands",to: "brand#index", as: :brand
    get "brands/search",to: "brand#search", as: :brand_search
    get "brands/show", to: "brands#show", as: :brand_show
  #クレジットカードに必要なカラムによって、ルーティングが変わることがある。
    resource :credit, only: [:show,:new,:create,:delete]
    
    resources :items ,only: [:index,:show,:new,:create,:edit,:update,:destroy] do
      collection do
        get "get_category_children", defaults:{ format: "json"}
        get "get_category_grandchildren",defaults:{ format:"json"}
      end
      member do
        get "confirmation"
        post "pay"
      end
    end  

end