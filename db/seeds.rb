# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{title: 'Junior'}, {title: 'Middle'}, {title: 'Senior'}])

tests = Test.create([{title: 'Ruby', level: 1, category_id: categories[0].id}, {title: 'Java Script', level: 1, category_id: categories[1].id}, {title: 'C++', level: 1, category_id: categories[2].id}])

questions = Question.create([{body: 'Кто создатель языка программирования Ruby?', test_id: tests[0].id}, {body: 'Кто создатель языка программирования Java Script?', test_id: tests[1].id}, {body: 'Кто создатель языка программирования C++?', test_id: tests[2].id}])

answers = Answer.create([{body: 'Юкихиро Мацумото', correct: true, question_id: questions[0].id}, {body: 'Брендан Эйх', correct: false, question_id: questions[0].id}, {body: 'Брендан Эйх', correct: true, question_id: questions[1].id}, {body: 'Юкихиро Мацумото', correct: false, question_id: questions[1].id}, {body: 'Бьёрн Страуструп', correct: true, question_id: questions[2].id}, {body: 'Юкихиро Мацумото', correct: false, question_id: questions[2].id}])

users = User.create([{name: 'Alex'}, {name: 'Mike'}, {name: 'Nik'}])
