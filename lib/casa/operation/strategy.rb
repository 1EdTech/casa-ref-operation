module CASA
  module Operation
    class Strategy

      attr_reader :definition
      attr_reader :uuid
      attr_reader :name
      attr_reader :section
      attr_reader :options

      def initialize definition, options = nil

        @definition = definition
        @uuid = definition.uuid
        @name = definition.name
        @section = definition.section
        @options = options ? options : {}

      end

    end
  end
end