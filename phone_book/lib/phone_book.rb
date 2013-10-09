require 'csv'

require_relative 'person'

class PhoneBook
  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def entries
    people = []
    contents = CSV.open(filename, headers: true, header_converters: :symbol)
    contents.each do |row|
      people << Person.new(row)
    end
    people
  end
end
