gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/report_card'

class ReportCardTest < Minitest::Test
  def test_filename
    report_card = ReportCard.new('path/to/data.csv')
    assert_equal 'path/to/data.csv', report_card.filename
  end

  def test_load_data
    skip
    filename = File.absolute_path("../fixtures/grades.csv", __FILE__)
    report_card = ReportCard.new(filename)

    grade = report_card.grades[1]
    assert_equal "Alice Smith", grade.student_name
    assert_equal "Calculus", grade.subject
    assert_equal "95", grade.percentage
  end
end

