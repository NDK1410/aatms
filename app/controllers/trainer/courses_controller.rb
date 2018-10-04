class Trainer::CoursesController < ApplicationController
  before_action :find_course
  before_action :find_members_not_in_course , only: [:show]
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new course_params
    if @course.save
      redirect_to trainer_course_path(@course)
    else
      redirect_to root_url
    end
  end

  def edit
    redirect_to root_url and return unless @course
  end

  def update
    @course.update_attributes(course_params)
    redirect_to trainer_course_path(@course)
  end

  def index
    @courses = Course.all
  end

  def show
    course_of_trainer = CourseTrainer.find_by trainer_id: current_trainer.id, course_id: params[:id]
    redirect_to root_url and return unless @course
  end

  private
  def course_params
    params.require(:course).permit(:name, :description, subject_ids: [])
  end

  def find_course
    @course = Course.find_by id: params[:id]
  end

  def find_members_not_in_course
    @find_trainees = Trainee.trainee_data(@course)
    @find_trainers = Trainer.trainer_data(@course)
  end
end
