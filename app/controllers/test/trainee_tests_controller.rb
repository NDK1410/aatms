class Test::TraineeTestsController < ApplicationController

  def index
    @training_course = current_trainee.courses.find_by status: 1
    @course_trainee = CourseTrainee.find_by trainee_id: current_trainee.id, course_id: @training_course.id
    @trainee_tests = @course_trainee.trainee_tests
    @subject_tests = @course_trainee.course.subjects
  end

  def show
    @training_course = current_trainee.courses.find_by status: 1
    @test = TraineeTest.find params[:id]
  end

  def create
    respond_to do |format|
      @questions = TestQuestion.questions_of_subjects(params[:trainee_test][:subject_id])
									.limit(20).shuffle
      @training_course = current_trainee.courses.find_by status: 1
      @course_trainee = CourseTrainee.find_by trainee_id: current_trainee.id, course_id: @training_course.id
      @new_test = @course_trainee.trainee_tests.build(trainee_test_params)
      @new_test.title ||= @new_test.subject.name
      @questions.each do |question|
        answers = question.test_answers
        @new_test.test_questions << question
        answers.each do |answer|
          @new_test.trainee_questions.last.test_answers << answer
          @new_test.trainee_questions.last.trainee_answers.last.answer ||= answer.answer
        end
      end
      @new_test.save
      format.html {redirect_to test_course_trainee_test_path(@training_course, @new_test)}
    end
  end

  def update
    respond_to do |format|
      @test = TraineeTest.find params[:id]
      @test.update_test(params[:trainee_answer_ids])
      format.html {redirect_to trainee_course_trainee_test_path(@test.course_trainee.course, @test)}
    end
  end

  private

  def trainee_test_params
    params.require(:trainee_test).permit(:subject_id, :subject_name, :course_trainee_id)
  end
end
