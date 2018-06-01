class Deck < ApplicationRecord
  belongs_to :game

  def add_card(card)
    self.stack << card
    self.decklist << card
  end
end
