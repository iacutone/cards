class NewDeckForm < DeckForm
  commands decks: :create

  def commit!
    decks.try { decks.create.call(attributes) }
  end

end
