class Subject < ApplicationRecord
  has_many :tasks 
  has_many :trainee_subjects
  has_many :course_subjects , dependent: :destroy
  has_many :course_subject_tasks, through: :course_subjects
  has_many :schedules
  has_many :trainees, through: :trainee_subjects
  has_many :courses,  through: :course_subjects
  has_one :subject_test
  accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
  scope :subject_data, -> (course){where.not(id: CourseSubject.select(:subject_id).where(course: course))}
end
