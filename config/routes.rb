Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  # teacher routes
  get 'teacher_dashboard', to: 'teachers#index'
  get 'teacher_profile', to: 'teachers#show'

  # student routes
  get 'student_dashboard', to: 'students#index'
  get 'admin_dashboard', to: 'admins#index'
end
