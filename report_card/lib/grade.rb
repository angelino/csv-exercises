class Grade
  attr_reader :student_name, :subject, :percentage

  def initialize(attributes)
    @student_name = attributes[:student_name]
    @subject = attributes[:subject]
    @percentage = attributes[:percentage]
  end
end
