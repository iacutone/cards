module DeckCommands
  class Update < ROM::Commands::Update[:sql]
    relation :decks
    register_as :update
    result :one

    # define a validator to use
    # validator DeckValidator
  end
end
