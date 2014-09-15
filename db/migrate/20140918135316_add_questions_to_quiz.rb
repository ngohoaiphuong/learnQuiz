class AddQuestionsToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :questions, :json, default: "{}"
  end
end
