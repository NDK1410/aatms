class Trainer::TraineeTestsController < ApplicationController

  def index
  	@course = Course.find params[:course_id]
  end

  def show
  	@test = TraineeTest.find params[:id]
  end

  def edit
  	@course = Course.find params[:id]
  	@test = TraineeTest.find params[:id]
  	if params[:trainee_test]
  	  @test.update_score(params[:trainee_test][:score])
  	  redirect_to trainer_course_trainee_tests_path(@course)
  	end
  end
end