gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/shopping_list'

class ShoppingListTest < Minitest::Test
  def test_filename
    shopping_list = ShoppingList.new("path/to/data.csv")
    assert_equal "path/to/data.csv", shopping_list.filename
  end

  def test_load_data
    skip
    path = File.absolute_path("../fixtures/items.csv", __FILE__)
    shopping_list = ShoppingList.new(path)

    item = shopping_list.items[3]
    assert_equal "cheese", item.name
    assert_equal "200g", item.quantity
  end
end

