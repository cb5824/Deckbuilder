class Game < ApplicationRecord
  has_one :deck
  has_one :push_deck
end
