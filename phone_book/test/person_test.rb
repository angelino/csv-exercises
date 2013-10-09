gem 'minitest'

require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/person'

class PersonTest < Minitest::Test
  def test_first_name
    person = Person.new(first_name: 'Alice')
    assert_equal 'Alice', person.first_name
  end

  def test_last_name
    person = Person.new(last_name: 'Smith')
    assert_equal 'Smith', person.last_name
  end

  def test_phone_number
    person = Person.new(phone_number: '123-555-1234')
    assert_equal '123-555-1234', person.phone_number
  end

  def test_all_the_things
    data = {first_name: 'Bob', last_name: 'Cook', phone_number: '123-555-6789'}
    person = Person.new(data)

    assert_equal 'Bob', person.first_name
    assert_equal 'Cook', person.last_name
    assert_equal '123-555-6789', person.phone_number
  end
end
