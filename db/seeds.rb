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

course2 = Course.create! name: "React Native"
  description:
  image:

# Create Trainer Course
trainer_course1 = CourseTrainer.create course_id: course1.id,
  trainer_id: trainer1.id

trainer_course2 = CourseTrainer.create course_id: course2.id,
  trainer_id: trainer1.id

# Create Course Trainee
course_trainee1 = CourseTrainee.create! course_id: course1.id,
  trainee_id: trainee2.id

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
  subject_id: subject1.id
trainee_subject2 = TraineeSubject.create! trainee_id: trainee2.id,
  course_subject_id: course_subject2.id,
  course_trainee_id: course_trainee1.id,
  subject_id: subject2.id
trainee_subject3 = TraineeSubject.create! trainee_id: trainee2.id,
  course_subject_id: course_subject3.id,
  course_trainee_id: course_trainee1.id,
  subject_id: subject3.id
trainee_subject4 = TraineeSubject.create! trainee_id: trainee2.id,
  course_subject_id: course_subject4.id,
  course_trainee_id: course_trainee1.id,
  subject_id: subject4.id

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
