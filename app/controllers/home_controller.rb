class HomeController < ApplicationController
  before_action :redirect_to_dashboard

  def index
  end

  private
  def redirect_to_dashboard
    if current_user.role == "student"
      redirect_to student_dashboard_path
    elsif current_user.role == "teacher"
      redirect_to teacher_dashboard_path
    elsif current_user.role == "admin"
      redirect_to admin_dashboard_path
    else
      redirect_to root_path
    end
  end
end
