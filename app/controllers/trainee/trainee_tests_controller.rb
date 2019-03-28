class Trainee::TraineeTestsController < ApplicationController
  def show
    @test = TraineeTest.find params[:id]
  end
end