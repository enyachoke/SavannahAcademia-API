Rails.application.routes.draw do
  get 'student_group_marks/existing', to: 'student_group_marks#existing'
  post 'student_group_marks/save_all', to: 'student_group_marks#save_all'
  post 'authenticate', to: 'authentication#authenticate'
  resources :student_group_marks
  resources :grading_levels
  resources :subject_marks
  resources :exam_periods
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
