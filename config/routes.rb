Rails.application.routes.draw do
  resources :class_timings
  resources :class_room_subjects
  resources :marks
  resources :schedule_items
  resources :time_table_items
  resources :teachers
  resources :students
  resources :terms
  resources :subjects
  resources :student_groups
  resources :years
  resources :class_rooms
  post 'authenticate', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
