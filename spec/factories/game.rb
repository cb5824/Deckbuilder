FactoryBot.define do
  factory :game do
    before(:create) {|game| game.deck = FactoryBot.build(:deck)}
  end
end
