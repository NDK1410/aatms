class Trainer::CourseSubjectsController < ApplicationController
  before_action :find_course

  def update
    course_subject = CourseSubject.find_by id: params[:course][:course_subject_id]
    if params[:course][:subject_status] == "start"
      CourseSubjectTask.build_course_subject_tasks(course_subject)
      TraineeTask.build_trainee_tasks(course_subject)
      course_subject.status = 1
      course_subject.save
    elsif params[:course][:subject_status] == "pending"
      course_subject.finish! 
    end
    respond_to do |format|
      format.html {redirect_to trainer_course_path(@course)}
    end
  end

  private
  def find_course
    @course = Course.find_by id: params[:id] 
  end
end
