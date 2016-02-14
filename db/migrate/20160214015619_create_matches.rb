class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.boolean :completed
      t.integer :player1
      t.integer :player2
      t.integer :player1_score
      t.integer :player2_score
      t.references :tournament, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
