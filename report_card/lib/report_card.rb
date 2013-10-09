require 'csv'

require_relative 'grade'

class ReportCard
  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def grades
    @grades ||= build_grades
  end

  private

  def build_grades
    data.map { |row| Grade.new(row) }
  end

  def data
    CSV.open(filename, headers: true, header_converters: :symbol)
  end
end
