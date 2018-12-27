class Test::SubjectsController < ApplicationController
  def show
  	current_course = CourseTrainee.find_by course_id: params[:course_id], trainee_id: current_trainee.id
  	@subjects = current_course.course.subjects
  		@subjects.each do |subject|
  		@subject_test_questions = subject.subject_test.test_questions
  	end
  end
end