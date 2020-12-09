Rails.application.routes.draw do
  # ユーザー一覧
  get "users/index" => "users#index"

  # ユーザー新規登録
  get "users/signup" => "users#signup"
  post "users/create" => "users#create"

  # ユーザー詳細
  get "users/:id/" => "users#show"

  # ユーザー編集
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"

  get 'posts/index'
  get "posts/new"
  get "posts/:id" => "posts#show"
  post "posts/create"

  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get '/' => "home#top"
  get 'top' => "home#top"
  get 'about' => "home#about"
end