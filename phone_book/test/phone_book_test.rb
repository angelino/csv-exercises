gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/phone_book'

class PhoneBookTest < Minitest::Test
  attr_reader :phone_book, :filename
  def setup
    @filename = File.absolute_path("../fixtures/people.csv", __FILE__)
    @phone_book = PhoneBook.new(filename)
  end

  def test_filename
    assert_equal filename, phone_book.filename
  end

  def test_load_data
    skip
    person = phone_book.entries.last
    assert_equal "Kaelyn", person.first_name
    assert_equal "Bartell", person.last_name
    assert_equal "(581) 319-6099", person.phone_number
  end

  def test_find_by_first_name
    skip
    people = phone_book.find_by_first_name("Rickie")
    assert_equal 4, people.size
    last_names = people.map do |person|
      person.last_name
    end
    assert_equal ["Bogan", "Cassin", "Schaden", "Stokes"], last_names.sort
  end

  def test_find_by_last_name
    skip
    people = phone_book.find_by_last_name("Rice")
    assert_equal 6, people.size
    first_names = people.map do |person|
      person.first_name
    end
    expected = ["Consuelo", "Geo", "Kelli", "Libby", "Rahul", "Terrence"]
    assert_equal expected, first_names.sort
  end

  def test_find_by_score
    skip
    people = phone_book.find_by_score(42)
    assert_equal 44, people.size
    first_names = people.map do |person|
      person.first_name
    end
    assert_equal ["Thurman", "Tyreek", "Zelma"], first_names.sort[-3..-1]
  end

  # It's like in golf, lower scores are better
  def test_find_n_people_with_lowest_scores
    skip
    people = phone_book.n_lowest_scorers(2)
    names = people.map do |person|
      person.name
    end
    assert_equal ["Ara Olson", "Freeman Kilback"], names.sort
  end
end

