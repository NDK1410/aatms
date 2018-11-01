class CourseTrainee < ApplicationRecord
	after_create_commit :notify
  belongs_to :trainee
  belongs_to :course
  has_many :trainee_subjects, dependent: :destroy
  has_many :notification_statuses, dependent: :destroy
  scope :of_trainee,-> (trainee_id){ where trainee_id: trainee_id}
  # scope :of_trainee, lambda { |trainee| where(:trainee_id => trainee.id) }
  private
  def notify
    ActiveRecord::Base.transaction do
    	new_notification = Notification.create(event: "#{self.trainee.name} was added to course #{self.course.name}" , course_id: self.course.id)
      self.course.course_trainees.each do |course_trainee|
        new_notification_statuses = course_trainee.notification_statuses.build( course_trainee_id: course_trainee.id , notification_id: new_notification.id )
        new_notification_statuses.save
      end
    end
  end
end
