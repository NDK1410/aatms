class Test::CoursesController < ApplicationController
  def show
    trainee_courses = current_trainee.courses
    trainee_courses.each do |trainee_course|
		  current_course = trainee_course if trainee_course.training?
		  @course_subjects = current_course.subjects
    end
  end

  def new
  	@test = TraineeTest.new
  end

  def create
  	@test = TraineeTest.new(params[:trainee_test])
  	redirect_to test_course_path if @test.save
  end
end