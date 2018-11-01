class StaticPagesController < ApplicationController
  before_action :signed_in?

  def home
  	if current_trainee
      @trainee_courses = CourseTrainee.of_trainee(current_trainee)
      @trainee_courses.each do |trainee_course|
	  	  redirect_to trainee_course_path(trainee_course.course) if trainee_course.course.start?
      end
    elsif current_trainer
      redirect_to trainer_courses_path
  	end
  end

  private
  def signed_in?
    if !trainee_signed_in? && !trainer_signed_in?
      redirect_to new_trainee_session_path
    end
  end
end 
