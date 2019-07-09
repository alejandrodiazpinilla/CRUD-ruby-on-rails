Rails.application.routes.draw do
 
  #get 'articles/' => "articles#index"
  #get 'articles/new' => "articles#new"
  #get 'articles/:id' => "articles#show", as: "article"
  
  #get 'articles/edit'
  #post 'articles' => "articles#create"
  root "articles#index"
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
