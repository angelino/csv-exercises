require 'csv'

require_relative 'person'

class PhoneBook
  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def entries
    @entries ||= build_people
  end

  private

  def build_people
    data.map { |row| Person.new(row) }
  end

  def data
    CSV.open(filename, headers: true, header_converters: :symbol)
  end
end
