gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/phone_book'

class PhoneBookTest < Minitest::Test
  def test_filename
    phone_book = PhoneBook.new("path/to/data.csv")
    assert_equal "path/to/data.csv", phone_book.filename
  end

  def test_load_data
    filename = File.absolute_path("../fixtures/people.csv", __FILE__)
    phone_book = PhoneBook.new(filename)

    person = phone_book.entries.last
    assert_equal "Eve", person.first_name
    assert_equal "Parker", person.last_name
    assert_equal "123-555-5555", person.phone_number
  end
end
