class TeachersController < ApplicationController
  def index
    @teacher_courses = current_user.courses
  end

  def show
  end

  def courses
    @teacher_courses = current_user.courses
  end

  def messages
  end

  def announcements
  end

  def notifications
  end

  def quizzes
  end

  def assignments
  end
end
