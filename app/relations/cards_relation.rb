class CardsRelation < ROM::Relation[:sql]
  dataset :cards

  def with_deck(deck_id)
    where(deck_id: deck_id)
  end
end
