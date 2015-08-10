class DeckForm < ROM::Model::Form
  input do
    set_model_name 'deck'

    attribute :title, String
  end

  validations do
    relation :decks

    validates :title, presence: true
  end
end
