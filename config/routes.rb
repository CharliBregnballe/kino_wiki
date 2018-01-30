Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles
  root 'articles#index'
end
