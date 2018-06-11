FactoryBot.define do
  factory :game do
    before(:create) {|game| game.deck = FactoryBot.build(:deck)}
    before(:create) {|game| game.push_deck = FactoryBot.build(:push_deck)}
  end
end
