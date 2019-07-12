Rails.application.routes.draw do
  root 'items#index'
  devise_for :users, controllers: {
    registarations:     'users/registarations',
    passwords:          'users/passwords',
    omniauth_callbacks: 'users/omniauth_callbacks' 
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  # itemsはusersにネストさせる編集の都合上現在ここ
  resources :items ,only: [:index,:show,:new,:create,]do
    get "confirmation", on: :collection
  end
  resources :users do
    resource :credit, only: [:show,:new,:create,:delete]#クレジットカードに必要なカラムによって、ルーティングが変わることがある。
  end

end