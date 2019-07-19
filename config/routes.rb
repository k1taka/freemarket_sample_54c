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
    resource :credit, only: [:show,:new,:create,:delete]#クレジットカードに必要なカラムによって、ルーティングが変わることがある。
    resources :items ,only: [:index,:show,:new,:create,]do
      collection do
        get "confirmation"
        get "get_category_children", defaults:{ format: "json"}
        get "get_category_grandchildren",defaults:{ format:"json"}
      end
    end
  end  

end