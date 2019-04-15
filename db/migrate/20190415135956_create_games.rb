class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :score
      t.string :longest_word
      t.integer :time

      t.timestamps
    end
  end
end
