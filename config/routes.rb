Rails.application.routes.draw do
  get 'posts/index'
  get "posts/new"
  get "posts/:id" => "posts#show"
  post "posts/create"
  
  get '/' => "home#top"
  get 'top' => "home#top"
  get 'about' => "home#about"
end