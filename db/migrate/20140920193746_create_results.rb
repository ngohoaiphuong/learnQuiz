class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :user
      t.references :quiz

      t.timestamps
    end
    add_index :results, :user_id
    add_index :results, :quiz_id
  end
end
