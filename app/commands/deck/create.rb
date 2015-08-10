module DeckCommands
  class Create < ROM::Commands::Create[:sql]
    relation :decks
    register_as :create
    result :one

    # define a validator to use
    # validator DeckValidator
  end
end
