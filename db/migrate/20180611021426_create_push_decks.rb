class CreatePushDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :push_decks do |t|
      t.belongs_to :game
      t.text :stack, array: true, default: ['stealth', 'stealth', 'stealth', 'stealth', 'stealth', 'stealth', 'stealth', 'stealth', 'stealth', 'stealth', 'force', 'force', 'force', 'force', 'force', 'force', 'force', 'force', 'force', 'force', 'cunning', 'cunning', 'cunning', 'cunning', 'cunning', 'cunning', 'cunning', 'cunning', 'cunning', 'cunning', 'charisma', 'charisma', 'charisma', 'charisma', 'charisma', 'charisma', 'charisma', 'charisma', 'charisma', 'charisma', ]
    end
  end
end
