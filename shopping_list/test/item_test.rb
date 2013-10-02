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
    skip
    item = Item.new(quantity: "1 bottle")
    assert_equal "1 bottle", item.quantity
  end

  def test_all_the_things
    skip
    data = {name: "guacamole", quantity: "enough"}
    item = Item.new(data)
    assert_equal "guacamole", item.name
    assert_equal "enough", item.quantity
  end
end



