require 'casa/operation/base_with_attributes'

module CASA
  module Operation
    module Transform
      class Base < ::CASA::Operation::BaseWithAttributes

        def execute! payload_hash
          execute_attribute_method_over_attributes! payload_hash, 'attributes'
        end

      end
    end
  end
end