gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/item'

class ItemTest < Minitest::Test
  def test_name
    item = Item.new(name: "gummy bears")
    assert_equal "gummy bears", item.name
  end

  def test_quantity
    item = Item.new(quantity: "1 bottle")
    assert_equal 1, item.quantity
  end

  def test_unit_price
    item = Item.new(unit_price: "12.34")
    assert_equal 12.34, item.unit_price
  end

  def test_calculate_price
    item = Item.new(quantity: "5 g", unit_price: "0.12")
    assert_equal 0.6, item.price
  end

  def test_calculate_tax
    item = Item.new(quantity: "3 lb", unit_price: "12.99")
    assert_in_delta 3.41, item.tax, 0.01
  end
end

