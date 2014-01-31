require 'casa/operation/translate/base'

module CASA
  module Operation
    module Translate
      class AdjOut < Base

        def self.factory attributes

          adj_out_translate_strategy = self.new
          attributes.each do |attribute_name, attribute|
            adj_out_translate_strategy.map attribute_name => attribute.uuid
          end
          adj_out_translate_strategy

        end

      end
    end
  end
end