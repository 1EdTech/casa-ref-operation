require 'casa/operation/base_with_attributes'

module CASA
  module Operation
    module Filter
      class Base < ::CASA::Operation::BaseWithAttributes

        def allows? payload_hash
          reduce_attributes_with_attribute_method! payload_hash, nil
        end

      end
    end
  end
end