class Trainee::SubjectsController < ApplicationController
  def show
    current_course = CourseTrainee.find_by course_id: params[:course_id], trainee_id: current_trainee.id
    redirect_to root_url and return unless current_course
    @current_subject = TraineeSubject.find_by course_trainee_id: current_course.id , subject_id: params[:id]
    redirect_to root_url and return unless @current_subject
    @tasks_of_subject = @current_subject.trainee_tasks
    @finish_tasks = @tasks_of_subject.select{|f| f.status== "finish"}
    byebug
  end

  def update
    current_course = CourseTrainee.find(params[:course_id])
    @current_subject = TraineeSubject.find_by course_trainee_id: current_course.id , subject_id: params[:id]
    @tasks_of_subject = @current_subject.trainee_tasks
    @trainee_task = @tasks_of_subject.find_by id: params[:format]
    if @trainee_task.finish?
      @trainee_task.pending!
    else
      @trainee_task.finish!
    end
    redirect_to trainee_course_subject_path(current_course , @current_subject.subject)
  end

  private
  def tranee_task_params
    params.require(:tasks_of_subject).permit(:task_tranee_id)
  end
end
