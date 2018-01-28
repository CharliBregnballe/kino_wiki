Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles
  root 'articles#index'
end
