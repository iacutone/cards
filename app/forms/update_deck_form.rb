class EditDeckForm < DeckForm
  commands decks: :update

  def self.build_from_existing(id)
    deck = rom.relation(:decks).by_id(id).one!
    self.build(deck)
  end

  def commit!
    decks.try { decks.update.by_id(id).set(attributes) }
  end

end
