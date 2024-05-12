Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  # teacher routes
  get 'teacher_dashboard', to: 'teachers#index'
  get 'teacher_profile', to: 'teachers#show'
  get 'teacher_quiz', to: 'teachers#quizzes'
  get 'teacher_course', to: 'teachers#courses'
  get 'teacher_message', to: 'teachers#messages'
  get 'teacher_notification', to: 'teachers#notifications'
  get 'teacher_assignment', to: 'teachers#assignments'
  get 'teacher_announcement', to: 'teachers#announcement'

  # student routes
  get 'student_dashboard', to: 'students#index'

  # admin routes
  get 'admin_dashboard', to: 'admins#index'
end
