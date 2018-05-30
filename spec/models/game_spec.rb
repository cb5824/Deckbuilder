require 'rails_helper'

feature 'games' do
  let!(:game) do
    FactoryBot.create(:game)
  end

  scenario 'A game has a deck' do
    expect(game.deck).to_not be(nil)
  end

  scenario 'A game starts with a score of 0' do
    expect(game.score).to be(0)
  end
end
