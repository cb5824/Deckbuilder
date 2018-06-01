class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.integer :action, null: false, default: 1
      t.integer :stealth, null: false, default: 1
      t.integer :force, null: false, default: 1
      t.integer :cunning, null: false, default: 1
      t.integer :charisma, null: false, default: 1
    end
  end
end
