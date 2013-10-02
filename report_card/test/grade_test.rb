gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/grade'

class GradeTest < Minitest::Test
  def test_student_name
    grade = Grade.new(student_name: "Alice Smith")
    assert_equal "Alice Smith", grade.student_name
  end

  def test_subject
    skip
    grade = Grade.new(subject: "Programming in Ruby")
    assert_equal "Programming in Ruby", grade.subject
  end

  def test_percentage
    skip
    grade = Grade.new(percentage: "98")
    assert_equal "98", grade.percentage
  end

  def test_all_the_things
    skip
    data = {subject: "Building Compilers", percentage: "76"}
    grade = Grade.new(data)
    assert_equal "Building Compilers", grade.subject
    assert_equal "76", grade.percentage
  end
end

