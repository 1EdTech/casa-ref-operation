require 'casa/operation/translate/base'

module CASA
  module Operation
    module Translate
      class AdjIn < Base

        def self.factory attributes

          adj_in_translate_strategy = self.new
          attributes.each do |attribute_name, attribute|
            adj_in_translate_strategy.map attribute.uuid => attribute_name
          end
          adj_in_translate_strategy

        end

      end
    end
  end
end