Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, :controllers => {
    registrations: "registrations"
  }

  # teacher routes
  get 'teacher/dashboard', to: 'teachers#index'
  get 'teacher/profile', to: 'teachers#show'
  get 'teacher/quizzes', to: 'teachers#quizzes'
  get 'teacher/courses', to: 'teachers#courses'
  get 'teacher/messages', to: 'teachers#messages'
  get 'teacher/notifications', to: 'teachers#notifications'
  get 'teacher/assignments', to: 'teachers#assignments'
  get 'teacher/announcements', to: 'teachers#announcements'

  # student routes
  get 'student_dashboard', to: 'students#index'

  # admin routes
  get 'admin_dashboard', to: 'admins#index'
end
