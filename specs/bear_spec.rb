require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../river")

class BearTest < MiniTest::Test

  def setup

    @bear1 = Bear.new("Yogi", "Grizzly", [], false)

  end

  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_gets_hungry
    assert_equal("Yogi's stomach is empty", @bear.bear_gets_hungry(@bear.name))
    assert_equal(true, @bear.hungry)
  end

def test_bear_stomach_count
  assert_equal(0, @bear.bear_stomach_count())
end

def test_bear_road
  assert_equal("ROAR", @bear.roar)
end

end
