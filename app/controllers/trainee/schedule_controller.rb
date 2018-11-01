class Trainee::ScheduleController < ApplicationController
	before_action :signed_in?

	def index
		trainee_courses = CourseTrainee.find_by params[:id]
		@trainning_course = trainee_courses.course
		@course_schedules = @trainning_course.schedule
		@today = Time.now.to_date.strftime(t(".time_default"))
	end

	private

	def signed_in?
    if !trainee_signed_in? && !trainer_signed_in?
      redirect_to new_trainee_session_path
    end
	end
end 