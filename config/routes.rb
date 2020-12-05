Rails.application.routes.draw do
  get 'posts/index'
  get "posts/new"
  get "posts/:id" => "posts#show"
  post "posts/create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  get '/' => "home#top"
  get 'top' => "home#top"
  get 'about' => "home#about"
end