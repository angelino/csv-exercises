gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/person'
require_relative '../lib/phone_number'

class PersonTest < Minitest::Test
  def test_first_name
    person = Person.new(first_name: "Alice")
    assert_equal "Alice", person.first_name
  end

  def test_last_name
    skip
    person = Person.new(last_name: "Smith")
    assert_equal "Smith", person.last_name
  end

  def test_name
    skip
    person = Person.new(first_name: "Bob", last_name: "Jones")
    assert_equal "Bob Jones", person.name
  end

  def test_formatted_phone_number
    skip
    # This got complicated all of a sudden.
    # Go solve the phone_number_test.rb before coming back
    person = Person.new(phone_number: "123-555-2345")
    assert_equal "(123) 555-2345", person.phone_number
  end

  def test_sum_of_phone_number
    skip
    person = Person.new(phone_number: "012-555-7890")
    assert_equal 42, person.score
  end

  def test_to_s # override to a nice value
    skip
    data = {
      first_name: "John",
      last_name: "Doe",
      phone_number: "123.555.0000"
    }
    person = Person.new(data)
    assert_equal "Doe, John: (123) 555-0000", person.to_s
  end
end

