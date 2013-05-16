MyBlog::Application.routes.draw do
  root :to => 'pages#landing'
  match '/blog' => 'blog#index'
  match '/blog/:id' => 'blog#show'
end
