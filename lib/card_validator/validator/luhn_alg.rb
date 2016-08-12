module CardValidator
  module Validator
    module LuhnAlg

      class << self

        def valid?(card)
          sum_of_doubles(card) % 10 == 0
        end

        private

          def sum_of_doubles(card)
            doubles = card.split('').reverse.map.with_index do |num, ind|
              if even?(ind + 1)
                num = 2 * num.to_i
                num > 9 ? sum_digits(num) : num
              else
                num.to_i
              end
            end
            doubles.inject(0, :+)
          end

          def even?(num)
            num >= 2 && num % 2 == 0
          end

          def sum_digits(num)
            sum = 0
            num.to_s.split('').each do |dig|
              sum +=dig.to_i
            end
            sum
          end
      end
    end
  end
end
