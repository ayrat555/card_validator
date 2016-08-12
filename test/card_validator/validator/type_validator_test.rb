require 'test_helper'

class CardValidator::Validator::TypeValidatorTest < Minitest::Test

  def test_should_validate_amex_card
    assert CardValidator::Validator::TypeValidator.valid?("371212121212121")
  end

  def test_should_validate_discover_card
    assert CardValidator::Validator::TypeValidator.valid?("6011212121212121")
  end

  def test_should_validate_mastercard_card
    assert CardValidator::Validator::TypeValidator.valid?("5111212121212121")
    assert CardValidator::Validator::TypeValidator.valid?("5311212121212121")
    assert CardValidator::Validator::TypeValidator.valid?("5511212121212121")
  end

  def test_should_validate_visa_card
    assert CardValidator::Validator::TypeValidator.valid?("4111212121212121")
    assert CardValidator::Validator::TypeValidator.valid?("4111212121212")
  end

  def test_should_validate_with_reality_check
    refute CardValidator::Validator::TypeValidator.valid?("7771212121212121")
  end
end
