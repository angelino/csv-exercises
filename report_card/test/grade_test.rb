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
    grade = Grade.new(subject: "Programming in Ruby")
    assert_equal "Programming in Ruby", grade.subject
  end

  def test_score
    grade = Grade.new(score: "98")
    assert_equal 98, grade.score
  end

  def test_a
    (94..100).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("A", grade)
      assert_grade_point(4.0, grade)
    end
  end

  def test_a_minus
    (90..93).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("A-", grade)
      assert_grade_point(3.7, grade)
    end
  end

  def test_b_plus
    (87..89).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("B+", grade)
      assert_grade_point(3.3, grade)
    end
  end

  def test_b
    (83..86).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("B", grade)
      assert_grade_point(3.0, grade)
    end
  end

  def test_b_minus
    (80..82).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("B-", grade)
      assert_grade_point(2.7, grade)
    end
  end

  def test_c_plus
    (77..79).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("C+", grade)
      assert_grade_point(2.3, grade)
    end
  end

  def test_c
    (73..76).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("C", grade)
      assert_grade_point(2.0, grade)
    end
  end

  def test_c_minus
    (70..72).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("C-", grade)
      assert_grade_point(1.7, grade)
    end
  end

  def test_d_plus
    (67..69).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("D+", grade)
      assert_grade_point(1.3, grade)
    end
  end

  def test_d
    (63..66).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("D", grade)
      assert_grade_point(1.0, grade)
    end
  end

  def test_d_minus
    (60..62).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("D-", grade)
      assert_grade_point(0.7, grade)
    end
  end

  def test_f
    (0..59).each do |i|
      grade = Grade.new(score: i.to_s)
      assert_grade("F", grade)
      assert_grade_point(0.0, grade)
    end
  end

  private

  def assert_grade(letter, grade)
    assert_equal letter, grade.letter, "#{grade.score}% should be #{letter}"
  end

  def assert_grade_point(grade_point, grade)
    assert_equal grade_point, grade.point, "#{grade.score}% should be #{grade_point}"
  end

end

