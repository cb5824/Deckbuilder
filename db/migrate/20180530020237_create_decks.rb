class CreateDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :decks do |t|
      t.belongs_to :game
      t.text :stack, array: true, default: []
      t.text :decklist, array: true, default: []
    end
  end
end
