class TraineeTestsController < ApplicationController

  def index
    training_course = current_trainee.courses.find_by status: 1
    @course_trainee = CourseTrainee.find_by trainee_id: current_trainee.id, course_id: training_course.id
    @all_tests = @course_trainee.trainee_tests
    @subject_tests = @course_trainee.course.subjects
  end

  def show
    @test = TraineeTest.find params[:id]
  end

  def create
    respond_to do |format|
      @questions = TestQuestion.questions_of_subjects(params[:trainee_test][:subject_id])
									.limit(20).shuffle
      training_course = current_trainee.courses.find_by status: 1
      @course_trainee = CourseTrainee.find_by trainee_id: current_trainee.id, course_id: training_course.id
      @new_test = @course_trainee.trainee_tests.build(trainee_test_params)
      @questions.each do |question|
        answers = question.test_answers
        @new_test.test_questions << question
        answers.each do |answer|
          @new_test.trainee_questions.last.test_answers << answer
          @new_test.trainee_questions.last.trainee_answers.last.answer ||= answer.answer
        end
      end
      @new_test.save
      format.html {redirect_to trainee_tests_path}
    end
  end

  def update
    respond_to do |format|
      @test = TraineeTest.find params[:id]
      @test.update_test(params[:trainee_answer_ids])
      format.html {redirect_to trainee_test_path(@test)}
    end
  end

  private

  def trainee_test_params
    params.require(:trainee_test).permit(:subject_id, :course_trainee_id)
  end
end
