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
   #カテゴリー
    get "categories", to: "category#index" ,as: :category
    get  "categories/search", to: "category#search",as: :category_search
  #ブランド
    get "brands",to: "brand#index", as: :brand
    get "brands/search",to: "brand#search", as: :brand_search
  #クレジットカードに必要なカラムによって、ルーティングが変わることがある。
    resource :credit, only: [:show,:new,:create,:delete]
    
    resources :items ,only: [:index,:show,:new,:create,:edit,:update] do
      collection do
        get "confirmation"
        get "get_category_children", defaults:{ format: "json"}
        get "get_category_grandchildren",defaults:{ format:"json"}
      end
    end  

end