gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/shopping_list'

class ShoppingListTest < Minitest::Test
  def test_filename
    shopping_list = ShoppingList.new("./test/fixtures/shopping_list.csv")
    assert_equal "./test/fixtures/shopping_list.csv", shopping_list.filename
  end

  def test_load_data
    shopping_list = ShoppingList.new("./test/fixtures/shopping_list.csv")

    item = shopping_list.items[3]
    assert_equal "cheese", item.name
    assert_equal "200g", item.quantity
  end
end

