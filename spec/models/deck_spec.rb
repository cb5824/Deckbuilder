require 'rails_helper'

feature 'decks' do
  let!(:deck) do
    FactoryBot.create(:deck)
  end

  let!(:card) do
    FactoryBot.create(:card)
  end

  scenario 'A deck has a stack and a decklist' do
    expect(deck.stack).to_not be(nil)
    expect(deck.decklist).to_not be(nil)
  end

  scenario 'A decklist and a stack are equal by default' do
    expect(deck.stack).to eq(deck.decklist)
    deck.add_card(card)
    expect(deck.stack).to include(card)
    expect(deck.stack).to eq(deck.decklist)
  end

end
