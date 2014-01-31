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

        def execute payload

          payload_hash = payload.to_hash

          ['use','require'].each do |type|

            if payload_hash['original'].include? type
              payload_hash['original'][type] = execute_section payload_hash['original'][type]
            end

            if payload_hash.include? 'journal'
              payload_hash['journal'].each_index do |idx|
                if payload_hash['journal'][idx].include? type
                  payload_hash['journal'][idx][type] = execute_section payload_hash['journal'][idx][type]
                end
              end
            end

          end

          payload_hash

        end

        def execute_section original_hash
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