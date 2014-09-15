class Results < ActiveRecord::Base
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :quiz, foreign_key: 'quiz_id'
  attr_accessible :user, :user_id, :quiz, :quiz_id, :answer
  serialize :answer, JSON
end
