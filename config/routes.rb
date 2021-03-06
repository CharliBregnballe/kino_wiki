Rails.application.routes.draw do
  mount Lockup::Engine, at: '/lockup'

  devise_for :users, :controllers => { :registrations => "registrations" }
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles
  resources :incidents

  authenticated :user do
    root to: 'articles#index', as: :authenticated_root
  end
  root to: redirect('/users/sign_in')

end
