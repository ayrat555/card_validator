require 'test_helper'

class CardValidator::Validator::LuhnAlgTest < Minitest::Test

  def test_should_validate_card
    assert CardValidator::Validator::LuhnAlg.valid?("4408041234567893")
  end

  def test_should_invalidate_card
    refute CardValidator::Validator::LuhnAlg.valid?("4417123456789112")
  end
end
