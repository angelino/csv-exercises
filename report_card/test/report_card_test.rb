gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/report_card'

class ReportCardTest < Minitest::Test
  def test_filename
    report_card = ReportCard.new("./test/fixtures/grades.csv")
    assert_equal "./test/fixtures/grades.csv", report_card.filename
  end

  def test_load_data
    skip
    report_card = ReportCard.new("./test/fixtures/grades.csv")

    grade = report_card.grades[1]
    assert_equal "Alice Smith", grade.student_name
    assert_equal "Calculus", grade.subject
    assert_equal "95", grade.percentage
  end
end

