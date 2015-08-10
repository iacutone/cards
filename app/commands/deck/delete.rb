module DeckCommands
  class Delete < ROM::Commands::Delete[:sql]
    relation :decks
    register_as :delete
    result :one
  end
end
