object @quizzes

attributes :id, :name, :description

node do |s|
  { :questions => s.questions }
end