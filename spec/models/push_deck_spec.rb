require 'rails_helper'

feature 'Push Deck' do
  let!(:push_deck) do
    FactoryBot.create(:push_deck)
  end

  let!(:game) do
    FactoryBot.create(:game)
  end

  scenario 'A game has a push_deck' do
    expect(game.push_deck).to_not be(nil)
  end

  scenario 'a push deck begins with 10 each of stealth, force, cunning, and charisma' do
    expect(push_deck.count('stealth')).to eq(10)
    expect(push_deck.count('force')).to eq(10)
    expect(push_deck.count('cunning')).to eq(10)
    expect(push_deck.count('charisma')).to eq(10)
  end
end
