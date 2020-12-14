Rails.application.routes.draw do

  # ユーザー画面----------------------------------------------------------

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

  # ユーザー削除
  post "users/:id/destroy" => "users#destroy"

  # ログイン
  get "login" => "users#login_form"
  post "login" => "users#login"

# 投稿画面----------------------------------------------------------

  # 投稿一覧
  get 'posts/index'

  # 新規投稿
  get "posts/new"
  post "posts/create"

  # 投稿詳細
  get "posts/:id" => "posts#show"

  # 投稿編集
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"

  # 投稿削除
  post "posts/:id/destroy" => "posts#destroy"

  get '/' => "home#top"
  get 'top' => "home#top"
  get 'about' => "home#about"
end