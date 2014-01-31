module CASA
  module Operation
    module Translate
      class Base

        def initialize mappings = {}
          @mappings = {}
          map mappings
        end

        def map mappings
          mappings.each do |from, to|
            @mappings[from] = to
          end
        end

        def mappings
          @mappings.clone
        end

        def execute original_hash
          translated_hash = {}
          original_hash.each do |name, value|
            if @mappings.include? name
              translated_hash[@mappings[name]] = value
            else
              translated_hash[name] = value
            end
          end
          translated_hash
        end

      end
    end
  end
end