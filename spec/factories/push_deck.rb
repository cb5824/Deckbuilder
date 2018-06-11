FactoryBot.define do
  factory :push_deck do
    before(:create) {|push_deck| push_deck.game = Game.new}
  end
end
