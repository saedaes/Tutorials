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

  get 'asesorias' => 'tutorial_dates#consult_by_teacher'
  get 'single_tutorial_date/:id' => 'tutorial_dates#single_tutorial_date'
  get 'logout' => 'login#destroy'
  get 'select_schedule' => 'schedules#select'
  get 'select_student' => 'students#select'
  get 'schedules/single/:id' => 'schedules#single'
  get 'students/single/:Register' => 'students#single'

  resources :login
  post  'login/index'
 
end
