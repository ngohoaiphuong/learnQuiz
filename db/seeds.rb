# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

password = '123456789'

users = []
(1..5).each do |index|
  users <<
  {
    email:"teacher#{index}@yopmail.com", 
    username:"teacher#{index}", 
    password:password, 
    password_confirmation:password, 
    role:'Teacher'
  }
end

(1..20).each do |index|
  users <<
  {
    email:"student#{index}@yopmail.com", 
    username:"student#{index}", 
    password:password, 
    password_confirmation:password, 
    role:'Student'
  }
end

p 'Create users .....'
User.create!(users)

Quiz.destroy_all
quizzes = []

(1..10).each do |index|
  quizzes << 
  {
    name: "Test ##{index}",
    description: "Description ##{index}",
    questions:[]
  }
  questions = rand(5..10)
  (1..questions).each do |index_question|
    options = rand(3..5)
    quizzes[index-1][:questions] <<
    {
      id: "#{index_question}",
      question: "Question ##{index_question} for Test ##{index}",
      description: "Description ##{index_question} for Test ##{index}",
      options:[]
    }
    (1..options).each do |index_option|
      answer = rand(1..5)
      answer = answer === 1 ? true : false
      quizzes[index-1][:questions][index_question-1][:options] <<
      {
        option: "Option ##{index_option} for Question ##{index_question}",
        answer: answer
      }
    end
  end
end

p 'Create questions list .....'
Quiz.create!(quizzes)

p 'Create results test .....'
Results.destroy_all
user_test = rand(5..10)
user = User.all[user_test]

quizzes = Quiz.all
quizzes_test = rand(5..7)
(1..quizzes_test).each do |index|
  answer = []
  questions = quizzes[index-1][:questions]
  questions_length = questions.length || 0
  (1..questions_length).each do |index_question|
    select_option = rand(1..questions[index_question-1]['options'].length)
    answer <<
    {
      questions_id: questions[index_question-1]['id'],
      question: questions[index_question-1]['question'],
      answer: select_option
    }
  end
  Results.create!(
    user: user,
    quiz: quizzes[index-1],
    answer: answer
  )
end

