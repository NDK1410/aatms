# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
trainee = Trainee.create! name: "Huy",
  email: "huy@gmail.com",
  password: "123456"
trainee = Trainee.create! name: "Khanh",
  email: "khanh@gmail.com",
  password: "123456"
Trainer.create! name: "Mr.Tuan",
  email: "trainer1@gmail.com",
  password: "123456"
Trainer.create! name: "Mr.Viet",
  email: "trainer2@gmail.com",
  password: "123456"
# course = Course.create! name: "Ruby on Rails",
#   description: "Hoc ruby on rails tai trung tam dao tao framgia"
# subject = Subject.create! name: "Rails",
#   instruction: "Hoc va thuc hanh webbase , css , javascript , ngon ngu ruby tren framework rails"
# course_trainee = CourseTrainee.create! course_id: course.id,
#   trainee_id: trainee.id
# course_subject = CourseSubject.create! course_id: course.id,
#   subject_id: subject.id
# TraineeSubject.create! trainee_id: trainee.id,
#   course_subject_id: course_subject.id,
#   course_trainee_id: course_trainee.id,
#   subject_id: subject.id




