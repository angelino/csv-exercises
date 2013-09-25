gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/grade'

class GradeTest < Minitest::Test
  def test_subject
    grade = Grade.new(subject: "Programming in Ruby")
    assert_equal "Programming in Ruby", grade.subject
  end

  def test_percentage
    grade = Grade.new(percentage: "98")
    assert_equal "98", grade.percentage
  end

  def test_all_the_things
    data = {subject: "Building Compilers", percentage: "76"}
    grade = Grade.new(data)
    assert_equal "Building Compilers", grade.subject
    assert_equal "76", grade.percentage
  end
end

