object @results

attributes :id

node do |s|
  node(:test_date) { s.updated_at }

  child s.user => :user_test do |obj|
    node(:username) { obj.username }
    node(:email) { obj.email }
    node(:role) { obj.role }
  end

  child s.quiz => :lesson_test do |obj|
    node(:name) { obj.name }
    node(:description) { obj.description }
  end
  node (:test_result){ s.answer }
end