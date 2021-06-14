Rails.application.routes.draw do
  devise_for :admin_users
  devise_for :users

  # 会員側のルーティング設定
   get 'items' => 'public/items#index'
  # 管理者側のルーティング設定
  namespace :admin do
   get 'items' => 'admin/items#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end