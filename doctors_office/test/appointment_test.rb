gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'date'
require 'time'
require_relative '../lib/appointment'

class AppointmentTest < Minitest::Test
  def test_patient_name
  end

  def test_time
    # set up an appointment at "2013-04-01 11:30:00 UTC"
    assert_equal Time.utc(2013, 4, 1, 11, 30), appointment.time
  end

  def test_date
    # set up an appointment at "2013-01-28 13:45:00 UTC"
    assert_equal Date.new(2013, 01, 28), appointment.date
  end
end

