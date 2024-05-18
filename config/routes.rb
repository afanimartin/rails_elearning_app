Rails.application.routes.draw do
  root 'home#index'

  # constraints ->(request) { request.env["warden"].role == "admin" } do
    mount Avo::Engine, at: Avo.configuration.root_path
  # end

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
  get 'student/dashboard', to: 'students#index'

  # admin routes
  get 'admin/dashboard', to: 'admins#index'

  resources :courses
end
