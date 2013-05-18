MyBlog::Application.routes.draw do
  root :to => 'pages#landing'
  resources :blog, :only => ["index", "show"]
end
