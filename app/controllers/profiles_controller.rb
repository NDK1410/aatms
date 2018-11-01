class ProfilesController < ApplicationController
  before_action :trainee_log_in?

  def index
  end

  def show
    current_course_trainees = CourseTrainee.of_trainee(current_trainee)
    current_course_trainees.each do |current_course_trainee|
    @course = current_course_trainee.course if current_course_trainee.course.start?
    @trainee_subjects = current_course_trainee.trainee_subjects
    @course_subjects = @course.subjects
    end
  end

  def update
    respond_to do |format| 
      task = TraineeTask.checked_task(params[:trainee_task_ids])
      task.update_status
      format.html { redirect_to profile_path }
    end
    # checked_task = TraineeTask.where id: params[:trainee_task_ids]
    # checked_task.finish!
    # checked_task.update(:status => 1)
    # checked_task.update_status
    # TraineeTask.where(id: params[:trainee_task_ids]).update(:status => 1)
  end

  private
  def trainee_log_in?
  	redirect_to new_trainee_session_path if !trainee_signed_in?
  end
end
