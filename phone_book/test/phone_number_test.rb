gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/phone_number'

class PhoneNumberTest < Minitest::Test
  def test_original_input
    phone_number = PhoneNumber.new("123-456-0123")
    assert_equal "123-456-0123", phone_number.input
  end

  def test_digits
    skip
    ["234-567-1234", "234.567.1234"].each do |number|
      phone_number = PhoneNumber.new(number)
      assert_equal "2345671234", phone_number.digits
    end
  end

  def test_area_code
    skip
    phone_number = PhoneNumber.new("345-678-3456")
    assert_equal "345", phone_number.area_code
  end

  def test_exchange
    skip
    phone_number = PhoneNumber.new("456-789-4567")
    assert_equal "789", phone_number.exchange
  end

  def test_subscriber
    skip
    phone_number = PhoneNumber.new("567-890-5678")
    assert_equal "5678", phone_number.subscriber
  end

  def test_to_s # override to_s to format the phone number
    skip
    phone_number = PhoneNumber.new("111-222-3333")
    assert_equal "(111) 222-3333", phone_number.to_s
  end

  def test_sum
    skip
    phone_number = PhoneNumber.new("111-222-3456")
    assert_equal 27, phone_number.sum
  end
end

