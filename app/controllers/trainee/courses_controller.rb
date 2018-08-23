class Trainee::CoursesController < ApplicationController
  before_action :signed_in?
  def index
  	@trainee_courses = CourseTrainee.where trainee_id: current_trainee.id
  end

  def show
  	course_of_trainee = CourseTrainee.find_by trainee_id: current_trainee.id, course_id: params[:id]
  	@course = course_of_trainee.course
    @course_subjects = CourseSubject.where course_id: course_of_trainee.id
    @trainee_of_courses = @course.trainees
    @trainer_of_courses = @course.trainers
  end

  private
    def course_params
      params.require(:course).permit(:name, :description, :image)
    end
end
