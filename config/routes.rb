MyBlog::Application.routes.draw do
  root :to => 'pages#landing'
  resources :blog
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
