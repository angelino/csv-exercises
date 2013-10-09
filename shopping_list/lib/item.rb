class Item
  attr_reader :name, :quantity, :unit_price

  def initialize(attributes)
    @name = attributes[:name]
    @quantity = attributes[:quantity]
    @unit_price = attributes[:unit_price]
  end
end
