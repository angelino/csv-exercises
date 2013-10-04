gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/shopping_list'

class ShoppingListTest < Minitest::Test

  def filename
    File.absolute_path("../fixtures/items.csv", __FILE__)
  end

  attr_reader :shopping_list
  def setup
    @shopping_list = ShoppingList.new(filename)
  end

  def test_filename
    assert_equal filename, shopping_list.filename
  end

  def test_load_data
    skip
    item = shopping_list.items[10]
    assert_equal "pasta", item.name
    assert_equal 10, item.quantity
    assert_equal 7.17, item.unit_price
  end

  def test_unit_price_cheaper_than
    skip
    items = shopping_list.cheaper_than(1.1)
    assert_equal 11, items.size
    assert_equal ["champagne", "potatoes", "cauliflower"], items[0..2].map(&:name)
  end

  def test_unit_price_more_expensive_than
    skip
    items = shopping_list.more_expensive_than(9.9)
    assert_equal 9, items.size
    expected = ["hummus", "turkey", "mint", "grapefruit", "apples", "basil", "oil", "shortening", "onions"]
    assert_equal expected, items.map(&:name)
  end
end

