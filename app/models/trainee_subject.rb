class TraineeSubject < ApplicationRecord
  after_update_commit :notify
  belongs_to :trainee
  belongs_to :subject
  belongs_to :course_subject
  belongs_to :course_trainee
  has_many :trainee_tasks, dependent: :destroy
  has_many :trainee_tests
  has_many :subject_tests, through: :trainee_tests
  enum score: {worst:1 , bad: 2, normal: 3, good: 4 , excellent: 5 }

  

  private
  def notify
    ActiveRecord::Base.transaction do
      new_notification = Notification.create(event: "Supervisor rated #{self.trainee.name} after subject #{self.subject.name}", course_id: self.course_trainee.course.id)
      new_notification_statuses = course_trainee.notification_statuses.build( course_trainee_id: self.course_trainee.id , notification_id: new_notification.id )
      new_notification_statuses.save
    end
  end
end
