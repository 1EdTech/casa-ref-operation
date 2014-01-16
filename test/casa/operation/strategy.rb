require 'test/unit'
require 'ostruct'
require 'casa/operation/strategy'

class TestCASAOperationStrategy < Test::Unit::TestCase

  def test_attributes

    definition = ::OpenStruct.new({
      'uuid' => 'uuid-val',
      'name' => 'name-val',
      'section' => 'section-val'
    })

    options = {}

    strategy = CASA::Operation::Strategy.new definition, options

    ['definition', 'uuid', 'name', 'section', 'options'].each do |method|
      assert strategy.respond_to? method.to_sym
      assert !strategy.respond_to?("#{method}=".to_sym)
    end

    assert strategy.definition == definition
    assert strategy.uuid == definition.uuid
    assert strategy.name == definition.name
    assert strategy.section == definition.section
    assert strategy.options == options

  end

end