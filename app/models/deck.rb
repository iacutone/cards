ValueObject = Virtus.value_object(coerce: false)

class Deck
  include ValueObject

  values do
    attribute :id, Integer
    attribute :title, String
  end
end
