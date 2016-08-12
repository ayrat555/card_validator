module CardValidator
  module Validator

    class << self
      def valid?(card)
        card = card.gsub(' ', '')
        number?(card) &&
          TypeValidator.valid?(card) &&
            LuhnAlg.valid?(card)
      end

      private

        def number?(card)
          /\A\d+\z/.match(card)
        end
    end
  end
end
