FactoryBot.define do
  factory :deck do
    before(:create) {|deck| deck.game = Game.new}
  end
end
