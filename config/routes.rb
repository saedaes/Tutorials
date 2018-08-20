Rails.application.routes.draw do
  resources :users
  resources :profiles
  resources :subjects
  resources :students
  resources :teachers
  root to: redirect('/places')
  resources :places
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
