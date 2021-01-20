class CreateProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.integer :board_size
      t.string :board
      t.string :answer
      t.string :move
      t.string :player
      t.integer :attempts
      t.integer :solved
      t.boolean :user_made
      t.string :prompt
      t.string :level

      t.timestamps
    end
  end
end
