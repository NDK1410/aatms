class Test::TraineeTestsController < ApplicationController
	def index
		trainee_courses = current_trainee.courses
    trainee_courses.each do |trainee_course|
		  current_course = trainee_course if trainee_course.training?
		  @course_subjects = current_course.subjects
    end
	end

	def new
		trainee_courses = current_trainee.courses
    trainee_courses.each do |trainee_course|
		  current_course = trainee_course if trainee_course.training?
		  @course_subjects = current_course.subjects
    end
	end

	def show
		current_course = CourseTrainee.find_by trainee_id: current_trainee.id
  	@subjects = current_course.course.subjects
  		@subjects.each do |subject|
  		@subject_test_questions = subject.subject_test.test_questions
  	end
	end

	def create
		# @trainee_test = TraineeTest.new
		# redirect_to root_path if @trainee_test.save

		current_trainee.trainee_subjects.each do |trainee_subject|
			@trainee_test = trainee_subject.trainee_tests.build(params[:trainee_test])
  	  @trainee_test.save
  	end
	end

	def update
		
	end
end


#<TraineeTest id: nil, subject_test_id: nil, trainee_subject_id: nil, mark: nil, testing_time: nil, created_time: nil, created_at: nil, updated_at: nil>
