gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/report_card'

class ReportCardTest < Minitest::Test
  def filename
    File.absolute_path("../fixtures/grades.csv", __FILE__)
  end

  attr_reader :report_card
  def setup
    @report_card = ReportCard.new(filename)
  end

  def test_filename
    assert_equal filename, report_card.filename
  end

  def test_load_data
    skip
    grade = report_card.grades[17]
    assert_equal "Gwendolyn Hegmann", grade.student_name
    assert_equal "Dance Company (Audition)", grade.subject
    assert_equal 69, grade.percentage
  end

  def test_grades_for_student
    skip
    grades = report_card.for_student("Beulah Maggio")
    assert_equal 2, grades.size

    french, algebra = grades
    assert_equal "Algebra I", algebra.subject
    assert_equal "B-", algebra.letter
    assert_equal "French", french.subject
    assert_equal "B-", algebra.letter
  end

  def test_grades_for_subject
    skip
    grades = report_card.for_subject("Biology")
    assert_equal 22, grades.size

    grade = grades[7]
    assert_equal "Werner Deckow", grade.student_name
    assert_equal "F", grade.letter
    assert_equal "Biology", grade.subject
  end

  def test_grade_point_average_for_student
    assert_in_delta 2.22, report_card.grade_point_average("Titus McCullough"), 0.01
  end

  def test_average_score
    assert_equal 64, report_card.average_score_in("Biology")
  end
end

