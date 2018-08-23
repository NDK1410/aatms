class Course < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :course_trainees
  has_many :course_subjects
  has_many :course_trainers
  has_many :course_subject_tasks 
  has_many :tasks, through: :course_subject_tasks
  has_many :trainees,  through: :course_trainees
  has_many :subjects,  through: :course_subjects
  has_many :trainers,  through: :course_trainers
  has_many :schedule
end
