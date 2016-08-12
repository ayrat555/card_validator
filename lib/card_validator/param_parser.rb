require 'optparse'

module CardValidator
  module ParamParser
    class << self

      def parse_params
        params = {}
        OptionParser.new do |parser|
          parser.on("-c", "--card CARD", "Card number to validate.") do |v|
            params[:card] = v
          end
        end.parse!
        params[:card]
      end
    end
  end
end
