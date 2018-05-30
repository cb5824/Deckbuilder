class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :score, null: false, default: 0
      t.timestamps
    end
  end
end
