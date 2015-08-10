ValueObject = Virtus.value_object(coerce: false)

class Card
  include ValueObject

  values do
    attribute :id, Integer
    attribute :front, String
    attribute :back, String
    attribute :deck_id, Integer
  end
end
