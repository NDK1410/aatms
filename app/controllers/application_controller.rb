class ApplicationController < ActionController::Base
  before_action :signed_in?
  before_action :notifications, only: [:show]
  before_action :set_current_trainee
  #   check_authorization :unless => :devise_controller?
  # rescue_from CanCan::AccessDenied do |exception|
  #   render :file => "/public/404.html", :status => 404, :layout => false
  # end

  private
    # def current_trainee
    #   super
    #   @current_trainee ||= Trainee.find(session[:trainee_id]) if session[:trainee_id]
    # end

    # def current_trainer
    #   super
    #   @current_trainer ||= Trainer.find(session[:trainer_id]) if session[:trainer_id]
    # end

    def current_ability
      @current_ability ||= current_trainer ? TrainerAbility.new(current_trainer) : TraineeAbility.new(current_trainee)
    end

    def notifications
      if current_trainer
        course_params = params[:course_id] ? params[:course_id] : params[:id]
        current_course = Course.find_by id: course_params
        @notifications = current_course.notifications.reverse 
      elsif current_trainee
        course_params = params[:course_id] ? params[:course_id] : params[:id]
        @current_course = Course.find_by id: course_params
        @notifications = @current_course.notifications.reverse 
        current_course_trainee = CourseTrainee.find_by course_id: @current_course.id , trainee_id: current_trainee.id
        @notifications_unread = current_course_trainee.notification_statuses.unread
      end
    end

    def set_current_trainee
      Trainee.current = current_trainee
    end

end
