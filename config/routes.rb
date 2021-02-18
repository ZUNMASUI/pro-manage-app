Rails.application.routes.draw do
  devise_for :users
  root 'top#index'

  # 先ほど追加したルーティングは削除する
  # そしてこの行を追加する
  resources :list, only: %i(new create edit update)
end