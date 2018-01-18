require 'test/unit'
require 'calculator'
class TestAdd < Test::Unit::TestCase
  def test_add
    calculator = Calculator.new
    expected = calculator.add 3,2
    assert_equal expected,5
  end

  def test_add_big_int
    calculator = Calculator.new
    val = calculator.add 10000000000,10000000000
    assert_equal val,20000000000
  end
end
