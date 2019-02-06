Rails.application.routes.draw do
  get 'login/index'
  get 'home/index'
  resources :teacher_places
  resources :group_meetings
  resources :tutorial_dates
  resources :schedules
  resources :teacher_subjects
  resources :users
  resources :profiles
  resources :subjects
  resources :students
  resources :teachers
  root to: redirect('/home/index')
  resources :places


  resources :login
  post  'login/index'
 


  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
