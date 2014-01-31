require 'test/unit'
require 'casa/operation/translate/base'

class TestCASAOperationTranslateBase < Test::Unit::TestCase

  def test_mappings

    strategy = CASA::Operation::Translate::Base.new
    assert strategy.mappings.size == 0

    strategy.map 'a' => 'x'
    assert strategy.mappings.size == 1
    assert strategy.mappings['a'] == 'x'

    strategy.mappings['a'] = "won't change actual mapping"
    assert strategy.mappings['a'] == 'x'

    strategy.map 'b' => 'y', 'c' => 'z'
    assert strategy.mappings.size == 3
    assert strategy.mappings['a'] == 'x'
    assert strategy.mappings['b'] == 'y'
    assert strategy.mappings['c'] == 'z'


  end

  def test_new

    strategy = CASA::Operation::Translate::Base.new 'a' => 'x'
    assert strategy.mappings.size == 1
    assert strategy.mappings['a'] == 'x'

    strategy = CASA::Operation::Translate::Base.new 'a' => 'x', 'b' => 'y'
    assert strategy.mappings.size == 2
    assert strategy.mappings['a'] == 'x'
    assert strategy.mappings['b'] == 'y'

  end

  def test_execute

    strategy = CASA::Operation::Translate::Base.new 'a' => 'x', 'b' => 'y'
    hash = strategy.execute 'a' => 'should be x', 'b' => 'should be y'
    assert hash['x'] == 'should be x'
    assert hash['y'] == 'should be y'

  end

end