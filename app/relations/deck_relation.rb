class DeckRelation < ROM::Relation[:sql]
  dataset :decks

  def by_id(id)
    where(id: id)
  end
end
