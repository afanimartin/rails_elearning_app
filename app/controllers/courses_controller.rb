class CoursesController < ApplicationController
  before_action :authenticate_user!
  # after_action :verify_authorized 

  def new
    @course = Course.new
    # authorize @course # Pundit authorization
  end

  def create
    @course = Course.new(course_params)
    # authorize @course # Pundit authorization

    if @course.save
      redirect_to @course, notice: 'Course was successfully created.'
    else
      render :new
    end
  end

  # ... other actions (edit, update, destroy)

  private

  def course_params
    params.require(:course).permit(:name, :instructor_id, :school_id) 
  end
end
