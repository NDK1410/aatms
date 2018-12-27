# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Trainees and Trainers
trainee1 = Trainee.create! name: "Huy",
  email: "huy@gmail.com",
  password: "123456"
trainee2 = Trainee.create! name: "Khanh",
  email: "khanh@gmail.com",
  password: "123456"
trainer1 = Trainer.create! name: "Mr.Tuan",
  email: "trainer1@gmail.com",
  password: "123456"
trainer2 = Trainer.create! name: "Mr.Viet",
  email: "trainer2@gmail.com",
  password: "123456"
# course = Course.create! name: "Ruby on Rails",
#   description: "Hoc ruby on rails tai trung tam dao tao framgia"
# subject = Subject.create! name: "Rails",
#   instruction: "Hoc va thuc hanh webbase , css , javascript , ngon ngu ruby tren framework rails"
# course_trainee = CourseTrainee.create! course_id: course.id,
#   trainee_id: trainee2.id
# course_subject = CourseSubject.create! course_id: course.id,
#   subject_id: subject.id
# trainee_subject = TraineeSubject.create! trainee_id: trainee2.id,
#   course_subject_id: course_subject.id,
#   course_trainee_id: course_trainee.id,
#   subject_id: subject.id
# task1 = Task.create! name: "SQL",
#   instruction: "SQL SQl SQl",
#   subject_id: subject.id
# course_subject_task = CourseSubjectTask.create! course_subject_id: course_subject.id,
#   task_id: task1.id,
#   task_name: "SQL",
#   task_instruction: "SQLSQLSQLSQLSQL"
# trainee_task = TraineeTask.create! trainee_id: trainee2.id,
#   course_subject_task_id: course_subject_task.id,
#   trainee_subject_id: trainee_subject.id,
#   task_id: task1.id

# Create Course
course1 = Course.create! name: "Ruby on Rails",
  description: "Ruby on Rails or Rails is a server-side web application framework written in Ruby under the MIT License. Rails is a model–view–controller (MVC) framework, providing default structures for a database, a web service, and web pages. It encourages and facilitates the use of web standards such as JSON or XML for data transfer, and HTML, CSS and JavaScript for display and user interfacing. In addition to MVC, Rails emphasizes the use of other well-known software engineering patterns and paradigms, including convention over configuration (CoC), don't repeat yourself (DRY), and the active record pattern",
  image: "http://s3.amazonaws.com/codecademy-content/courses/learn-rails/img/beach01.jpg"
# Create Trainer Course
trainer_course1 = CourseTrainer.create course_id: course1.id,
  trainer_id: trainer1.id

# Create Course Trainee
course_trainee1 = CourseTrainee.create! course_id: course1.id,
  trainee_id: trainee2.id,
  start_date: "15/08/2018", 
  finish_date: "20/04/2019"

# Create Subject
subject1 = Subject.create! name: "Ruby",
  instruction: "Ruby is a dynamic, interpreted, reflective, object-oriented, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro Matsumoto in Japan"
subject2 = Subject.create! name: "Rails",
  instruction: "Ruby on Rails is open source software, so not only is it free to use, you can also help make it better. More than 4,500 people already have contributed code to Rails. It’s easier than you think to become one of them."
subject3 = Subject.create! name: "MySql",
  instruction: "Mysql is an open-source relational database management system (RDBMS).[6] Its name is a combination of the name of co-founder Michael Widenius's daughter,[7] and SQL, the abbreviation for Structured Query Language. The MySQL development project has made its source code available under the terms of the GNU General Public License, as well as under a variety of proprietary agreements. MySQL was owned and sponsored by a single for-profit firm, the Swedish company MySQL AB, now owned by Oracle Corporation.[8] For proprietary use, several paid editions are available, and offer additional functionality"
subject4 = Subject.create! name: "Front-end",
  instruction: "Front-end web development, also known as client-side development is the practice of producing HTML, CSS and JavaScript for a website or Web Application so that a user can see and interact with them directly. The challenge associated with front end development is that the tools and techniques used to create the front end of a website change constantly and so the developer needs to constantly be aware of how the field is developing"

# Create Course Subjects
course_subject1 = CourseSubject.create! course_id: course1.id,
  subject_id: subject1.id
course_subject2 = CourseSubject.create! course_id: course1.id,
  subject_id: subject2.id
course_subject3 = CourseSubject.create! course_id: course1.id,
  subject_id: subject3.id
course_subject4 = CourseSubject.create! course_id: course1.id,
  subject_id: subject4.id

# Create Trainee Subject
trainee_subject1 = TraineeSubject.create! trainee_id: trainee2.id,
  course_subject_id: course_subject1.id,
  course_trainee_id: course_trainee1.id,
  subject_id: subject1.id,
  start_date: "15/08/2018", 
  finish_date: "20/04/2019"
trainee_subject2 = TraineeSubject.create! trainee_id: trainee2.id,
  course_subject_id: course_subject2.id,
  course_trainee_id: course_trainee1.id,
  subject_id: subject2.id,
  start_date: "15/08/2018", 
  finish_date: "20/04/2019"
trainee_subject3 = TraineeSubject.create! trainee_id: trainee2.id,
  course_subject_id: course_subject3.id,
  course_trainee_id: course_trainee1.id,
  subject_id: subject3.id,
  start_date: "15/08/2018", 
  finish_date: "20/04/2019"
trainee_subject4 = TraineeSubject.create! trainee_id: trainee2.id,
  course_subject_id: course_subject4.id,
  course_trainee_id: course_trainee1.id,
  subject_id: subject4.id,
  start_date: "15/08/2018", 
  finish_date: "20/04/2019"

# Create Tasks

#Ruby Task
task1 = Task.create! name: "Ruby Basic",
subject_id: subject1.id

task2 = Task.create! name: "Ruby Advance",
subject_id: subject1.id

task3 = Task.create! name: "Block, Proc, Lambda",
subject_id: subject1.id

task4 = Task.create! name: "Metaprogramming",
subject_id: subject1.id

#Rails Task
task5 = Task.create! name: "Rails Models",
subject_id: subject2.id

task6 = Task.create! name: "Rails Controllers",
subject_id: subject2.id

task7 = Task.create! name: "Rails Views",
subject_id: subject2.id

task8 = Task.create! name: "Ruby Gems",
subject_id: subject2.id

#Mysql Task
task9 = Task.create! name: "Create, Delete, Insert Into",
subject_id: subject3.id

task10 = Task.create! name: "Alter, Primary Key, Foreign Key",
subject_id: subject3.id

task11 = Task.create! name: "Join, Order By, Subquery",
subject_id: subject3.id

task12 = Task.create! name: "Mysql Test",
subject_id: subject3.id

#Front-end Task
task13 = Task.create! name: "HTML / CSS",
subject_id: subject4.id

task14 = Task.create! name: "JavaScript",
subject_id: subject4.id

task15 = Task.create! name: "Jquery",
subject_id: subject4.id

task16 = Task.create! name: "Front-end Test",
subject_id: subject4.id

# Create Course Subject Task

#Ruby
course_subject_task1 = CourseSubjectTask.create! course_subject_id: course_subject1.id,
  task_id: task1.id,
  task_instruction: "The Basic of Ruby Language"

course_subject_task2 = CourseSubjectTask.create! course_subject_id: course_subject1.id,
  task_id: task2.id,
  task_instruction: "The Advance of Ruby Language"

course_subject_task3 = CourseSubjectTask.create! course_subject_id: course_subject1.id,
  task_id: task3.id,
  task_instruction: "The Advance of Ruby Language"

course_subject_task4 = CourseSubjectTask.create! course_subject_id: course_subject1.id,
  task_id: task4.id,
  task_instruction: "The Advance of Ruby Language"

#Rails
course_subject_task5 = CourseSubjectTask.create! course_subject_id: course_subject2.id,
  task_id: task5.id,
  task_instruction: "The Basic of Ruby Language"

course_subject_task6 = CourseSubjectTask.create! course_subject_id: course_subject2.id,
  task_id: task6.id,
  task_instruction: "The Advance of Ruby Language"

course_subject_task7 = CourseSubjectTask.create! course_subject_id: course_subject2.id,
  task_id: task7.id,
  task_instruction: "The Advance of Ruby Language"

course_subject_task8 = CourseSubjectTask.create! course_subject_id: course_subject2.id,
  task_id: task8.id,
  task_instruction: "The Advance of Ruby Language"

#Mysql
course_subject_task9 = CourseSubjectTask.create! course_subject_id: course_subject3.id,
  task_id: task9.id,
  task_instruction: "The Basic of Ruby Language"

course_subject_task10 = CourseSubjectTask.create! course_subject_id: course_subject3.id,
  task_id: task10.id,
  task_instruction: "The Advance of Ruby Language"

course_subject_task11 = CourseSubjectTask.create! course_subject_id: course_subject3.id,
  task_id: task11.id,
  task_instruction: "The Advance of Ruby Language"

course_subject_task12 = CourseSubjectTask.create! course_subject_id: course_subject3.id,
  task_id: task12.id,
  task_instruction: "The Advance of Ruby Language"

#Front-end
course_subject_task13 = CourseSubjectTask.create! course_subject_id: course_subject4.id,
  task_id: task13.id,
  task_instruction: "The Basic of Ruby Language"

course_subject_task14 = CourseSubjectTask.create! course_subject_id: course_subject4.id,
  task_id: task14.id,
  task_instruction: "The Advance of Ruby Language"

course_subject_task15 = CourseSubjectTask.create! course_subject_id: course_subject4.id,
  task_id: task15.id,
  task_instruction: "The Advance of Ruby Language"

course_subject_task16 = CourseSubjectTask.create! course_subject_id: course_subject4.id,
  task_id: task16.id,
  task_instruction: "The Advance of Ruby Language"

# Create Trainee Tasks

# Ruby
trainee_task1 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task1.id,
  trainee_subject_id: trainee_subject1.id,
  task_id: task1.id

trainee_task2 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task2.id,
  trainee_subject_id: trainee_subject1.id,
  task_id: task2.id

trainee_task3 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task3.id,
  trainee_subject_id: trainee_subject1.id,
  task_id: task3.id

trainee_task4 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task4.id,
  trainee_subject_id: trainee_subject1.id,
  task_id: task4.id

# Rails
trainee_task5 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task5.id,
  trainee_subject_id: trainee_subject2.id,
  task_id: task5.id

trainee_task6 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task6.id,
  trainee_subject_id: trainee_subject2.id,
  task_id: task6.id

trainee_task7 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task7.id,
  trainee_subject_id: trainee_subject2.id,
  task_id: task7.id

trainee_task8 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task8.id,
  trainee_subject_id: trainee_subject2.id,
  task_id: task8.id

# Mysql
trainee_task9 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task9.id,
  trainee_subject_id: trainee_subject3.id,
  task_id: task9.id

trainee_task10 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task10.id,
  trainee_subject_id: trainee_subject3.id,
  task_id: task10.id

trainee_task11 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task11.id,
  trainee_subject_id: trainee_subject3.id,
  task_id: task11.id

trainee_task12 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task12.id,
  trainee_subject_id: trainee_subject3.id,
  task_id: task12.id

# Front-end
trainee_task13 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task13.id,
  trainee_subject_id: trainee_subject4.id,
  task_id: task13.id

trainee_task14 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task14.id,
  trainee_subject_id: trainee_subject4.id,
  task_id: task14.id

trainee_task15 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task15.id,
  trainee_subject_id: trainee_subject4.id,
  task_id: task15.id

trainee_task16 = TraineeTask.create! trainee_id: trainee2.id,
  course_subject_task_id: course_subject_task16.id,
  trainee_subject_id: trainee_subject4.id,
  task_id: task16.id

# Subject Test

subject_test1 = SubjectTest.create! subject_id: subject1.id

subject_test2 = SubjectTest.create! subject_id: subject2.id

subject_test3 = SubjectTest.create! subject_id: subject3.id

subject_test4 = SubjectTest.create! subject_id: subject4.id

# Test Question

test_question1 = TestQuestion.create! subject_test_id: subject_test1.id,
  question: "What is returned if you pass a key that doesnt exist into a hash?"

test_question2 = TestQuestion.create! subject_test_id: subject_test1.id,
  question: "'Lorem ipsum dolor sit ame' =~ /ip/"

test_question3 = TestQuestion.create! subject_test_id: subject_test1.id,
  question: "Which of the following statements is correct pertaining to instance variables in ruby"

test_question4 = TestQuestion.create! subject_test_id: subject_test1.id,
  question: "What will the following return?


  [1, 2, 3].map {|i| 2 + i * 2}
"

test_question5 = TestQuestion.create! subject_test_id: subject_test1.id,
  question: "What does the following code print?


  x = (0...9).select {|n| !n.even?}
"

test_question6 = TestQuestion.create! subject_test_id: subject_test1.id,
  question: "In ruby, !!nil means"

test_question7 = TestQuestion.create! subject_test_id: subject_test1.id,
  question: "What is the Ruby element that has a data set with start and end values, intended to keep a logical sequence of values in-between also?"

test_question8 = TestQuestion.create! subject_test_id: subject_test1.id,
  question: "In Ruby, nil is"

test_question9 = TestQuestion.create! subject_test_id: subject_test1.id,
  question: "Which of the following is a class variable?"

test_question10 = TestQuestion.create! subject_test_id: subject_test1.id,
  question: "Variables that start with two '@' symbols are what kind of variables in Ruby"

# Test Answer

test_answer1 = TestAnswer.create! answer: "nil"

test_answer2 = TestAnswer.create! answer: "0"

test_answer3 = TestAnswer.create! answer: "1"

test_answer4 = TestAnswer.create! answer: "Any Errors"

test_answer5 = TestAnswer.create! answer: "6"

test_answer6 = TestAnswer.create! answer: "true"

test_answer7 = TestAnswer.create! answer: "0"

test_answer8 = TestAnswer.create! answer: "5"

test_answer9 = TestAnswer.create! answer: "Range"

test_answer10 = TestAnswer.create! answer: "Box"

test_answer11 = TestAnswer.create! answer: "Package"

test_answer12 = TestAnswer.create! answer: "Median"

test_answer13 = TestAnswer.create! answer: "[4, 6, 8]"

test_answer14 = TestAnswer.create! answer: "{1 => 4, 2 => 6, 3 => 8}"

test_answer15 = TestAnswer.create! answer: "{1 => 6, 2 => 8, 3 => 10}"

test_answer16 = TestAnswer.create! answer: "[6, 8, 10]"

test_answer17 = TestAnswer.create! answer: "[1, 3, 5, 7, 9]"

test_answer18 = TestAnswer.create! answer: "[1, 3, 5, 7]"

test_answer19 = TestAnswer.create! answer: "[0, 2, 4, 6, 8]"

test_answer20 = TestAnswer.create! answer: "[0, 2, 4, 6]"

test_answer21 = TestAnswer.create! answer: "True"

test_answer22 = TestAnswer.create! answer: "False"

test_answer23 = TestAnswer.create! answer: "Errors"

test_answer24 = TestAnswer.create! answer: "Nothing"

test_answer25 = TestAnswer.create! answer: "Scope of instance variables is limited to the class in which the variable is instantiated"

test_answer26 = TestAnswer.create! answer: "Instance variables can be used as constants in a program"

test_answer27 = TestAnswer.create! answer: "Scope of the instance variable is restricted to the object self refers to"

test_answer28 = TestAnswer.create! answer: "Instance variables are always public variables"

test_answer29 = TestAnswer.create! answer: "the same thing as false."

test_answer30 = TestAnswer.create! answer: "an actual object"

test_answer31 = TestAnswer.create! answer: "a method"

test_answer32 = TestAnswer.create! answer: "equal to 0"

test_answer33 = TestAnswer.create! answer: "@my_variable"

test_answer34 = TestAnswer.create! answer: "my_variable"

test_answer35 = TestAnswer.create! answer: "MY_VARIABLE"

test_answer36 = TestAnswer.create! answer: "$my_variable"

test_answer37 = TestAnswer.create! answer: "@@my_variable"

test_answer38 = TestAnswer.create! answer: "Local variable"

test_answer39 = TestAnswer.create! answer: "Global variable"

test_answer40 = TestAnswer.create! answer: "Instance variable"

test_answer41 = TestAnswer.create! answer: "Class variable"

# Answer Of Question

answer_of_question1 = AnswersOfQuestion.create! test_answer_id: test_answer1.id,
  test_question_id: test_question1.id

answer_of_question2 = AnswersOfQuestion.create! test_answer_id: test_answer2.id,
  test_question_id: test_question1.id

answer_of_question3 = AnswersOfQuestion.create! test_answer_id: test_answer3.id,
  test_question_id: test_question1.id

answer_of_question4 = AnswersOfQuestion.create! test_answer_id: test_answer4.id,
  test_question_id: test_question1.id

answer_of_question5 = AnswersOfQuestion.create! test_answer_id: test_answer5.id,
  test_question_id: test_question2.id

answer_of_question6 = AnswersOfQuestion.create! test_answer_id: test_answer6.id,
  test_question_id: test_question2.id

answer_of_question7 = AnswersOfQuestion.create! test_answer_id: test_answer7.id,
  test_question_id: test_question2.id

answer_of_question8 = AnswersOfQuestion.create! test_answer_id: test_answer8.id,
  test_question_id: test_question2.id

answer_of_question9 = AnswersOfQuestion.create! test_answer_id: test_answer9.id,
  test_question_id: test_question3.id

answer_of_question10 = AnswersOfQuestion.create! test_answer_id: test_answer10.id,
  test_question_id: test_question3.id

answer_of_question11 = AnswersOfQuestion.create! test_answer_id: test_answer11.id,
  test_question_id: test_question3.id

answer_of_question12 = AnswersOfQuestion.create! test_answer_id: test_answer12.id,
  test_question_id: test_question3.id

answer_of_question13 = AnswersOfQuestion.create! test_answer_id: test_answer13.id,
  test_question_id: test_question4.id

answer_of_question14 = AnswersOfQuestion.create! test_answer_id: test_answer14.id,
  test_question_id: test_question4.id

answer_of_question15 = AnswersOfQuestion.create! test_answer_id: test_answer15.id,
  test_question_id: test_question4.id

answer_of_question16 = AnswersOfQuestion.create! test_answer_id: test_answer16.id,
  test_question_id: test_question4.id

answer_of_question17 = AnswersOfQuestion.create! test_answer_id: test_answer17.id,
  test_question_id: test_question5.id

answer_of_question18 = AnswersOfQuestion.create! test_answer_id: test_answer18.id,
  test_question_id: test_question5.id

answer_of_question19 = AnswersOfQuestion.create! test_answer_id: test_answer19.id,
  test_question_id: test_question5.id

answer_of_question20 = AnswersOfQuestion.create! test_answer_id: test_answer20.id,
  test_question_id: test_question5.id

answer_of_question21 = AnswersOfQuestion.create! test_answer_id: test_answer21.id,
  test_question_id: test_question6.id

answer_of_question22 = AnswersOfQuestion.create! test_answer_id: test_answer22.id,
  test_question_id: test_question6.id

answer_of_question23 = AnswersOfQuestion.create! test_answer_id: test_answer23.id,
  test_question_id: test_question6.id

answer_of_question24 = AnswersOfQuestion.create! test_answer_id: test_answer24.id,
  test_question_id: test_question6.id

answer_of_question25 = AnswersOfQuestion.create! test_answer_id: test_answer25.id,
  test_question_id: test_question7.id

answer_of_question26 = AnswersOfQuestion.create! test_answer_id: test_answer26.id,
  test_question_id: test_question7.id

answer_of_question27 = AnswersOfQuestion.create! test_answer_id: test_answer27.id,
  test_question_id: test_question7.id

answer_of_question28 = AnswersOfQuestion.create! test_answer_id: test_answer28.id,
  test_question_id: test_question7.id

answer_of_question29 = AnswersOfQuestion.create! test_answer_id: test_answer29.id,
  test_question_id: test_question8.id

answer_of_question30 = AnswersOfQuestion.create! test_answer_id: test_answer30.id,
  test_question_id: test_question8.id

answer_of_question31 = AnswersOfQuestion.create! test_answer_id: test_answer31.id,
  test_question_id: test_question8.id

answer_of_question32 = AnswersOfQuestion.create! test_answer_id: test_answer32.id,
  test_question_id: test_question8.id

answer_of_question33 = AnswersOfQuestion.create! test_answer_id: test_answer33.id,
  test_question_id: test_question9.id

answer_of_question34 = AnswersOfQuestion.create! test_answer_id: test_answer34.id,
  test_question_id: test_question9.id

answer_of_question35 = AnswersOfQuestion.create! test_answer_id: test_answer35.id,
  test_question_id: test_question9.id

answer_of_question36 = AnswersOfQuestion.create! test_answer_id: test_answer36.id,
  test_question_id: test_question9.id

answer_of_question37 = AnswersOfQuestion.create! test_answer_id: test_answer37.id,
  test_question_id: test_question9.id

answer_of_question38 = AnswersOfQuestion.create! test_answer_id: test_answer38.id,
  test_question_id: test_question10.id

answer_of_question39 = AnswersOfQuestion.create! test_answer_id: test_answer39.id,
  test_question_id: test_question10.id

answer_of_question40 = AnswersOfQuestion.create! test_answer_id: test_answer40.id,
  test_question_id: test_question10.id

answer_of_question41 = AnswersOfQuestion.create! test_answer_id: test_answer41.id,
  test_question_id: test_question10.id
