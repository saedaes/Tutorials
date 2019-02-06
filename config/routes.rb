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

  get 'asesorias' => 'schedules#consult_by_teacher'
  get 'single_schedule/:id' => 'schedules#single_schedule'

  resources :login
  post  'login/index'
 
end
