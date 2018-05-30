require 'rails_helper'

feature 'games' do
  let!(:game) do
    FactoryBot.create(:game)
  end

  scenario 'A game has a deck' do
    expect(game.deck).to_not be(nil)
  end
end
