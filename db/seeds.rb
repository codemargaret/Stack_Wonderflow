User.destroy_all

created_users = 0
while created_users < 5
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    )
    created_users += 1 if user.save
end
p "You now have #{User.count} users in your db"


Question.destroy_all

10.times do
  random_user = User.all.sample
  random_user.questions.create(
    title: Faker::FamilyGuy.quote,
    text: Faker::Hipster.sentences(2),
    rating: Faker::Number.between(1, 100)
    )
  end

p "You have created #{Question.count} questions in your db"





Answer.destroy_all

10.times do
  random_user = User.all.sample
  random_question = Question.all.sample
  random_question.answers.create(
    text: Faker::ChuckNorris.fact,
    rating: Faker::Number.between(1, 100),
    user_id: random_user.id
    )
end

p "You now have #{Answer.count} answers in your db"


Comment.destroy_all

25.times do
  random_user = User.all.sample
  random_question = Question.all.sample
  random_question.comments.create(
    text: Faker::Hipster.sentences(1),
    user_id: random_user.id
    )
end

p "You now have #{Comment.count} comments in your db"


AnswerComment.destroy_all

25.times do
  random_user = User.all.sample
  random_answer = Answer.all.sample
  random_answer.answer_comments.create(
    text: Faker::Hipster.sentences(1),
    user_id: random_user.id
    )
end

p "You now have #{AnswerComment.count} answer_comments in your db"
