require 'test_helper'

class CardValidator::ValidatorTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CardValidator::VERSION
  end

  def test_validates_card_number
    assert CardValidator::Validator.valid?("4408 0412 3456 7893")
  end

  def test_invalidates_card_number
    refute CardValidator::Validator.valid?("card number")
  end
end
