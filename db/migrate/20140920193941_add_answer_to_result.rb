class AddAnswerToResult < ActiveRecord::Migration
  def change
    add_column :results, :answer, :json, default: "{}"
  end
end
