module CardValidator
  module Validator
    module TypeValidator

      class << self
        def valid?(card)
          check_type(card)
        end

        private
          def check_type(card)
            amex?(card) || discover?(card) ||
            master_card?(card) || visa?(card)
          end

          def amex?(card)
            /\A(34)|(37).*/.match(card) &&
              card.size == 15
          end

          def discover?(card)
            /\A(6011).*/.match(card) &&
              card.size == 16
          end

          def master_card?(card)
            /\A(5)[1-5].*/.match(card) &&
              card.size == 16
          end

          def visa?(card)
            /\A(4).*/.match(card) &&
              (card.size == 13 || card.size == 16)
          end
      end
    end
  end
end
