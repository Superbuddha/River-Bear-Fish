require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Cod")

    @river = River.new("Amazon", [])

    @bear = Bear.new("Yogi", "Grizzly", [], false)

  end

  def test_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_fish_counter
    assert_equal(0, @river.fish_count)
  end

  def test_add_fish
    @river.fish_add(@fish1)
    assert_equal(1, @river.fish_count)
  end

  def test_remove_fish
    @river.fish_add(@fish1)
    @river.fish_add(@fish2)
    @river.fish_remove(@fish1)
    assert_equal(1, @river.fish_count)
  end

  def test_bear_gets_hungry
    assert_equal("Yogi's stomach is empty", @bear.bear_gets_hungry(@bear.name))
    assert_equal(true, @bear.hungry)
  end

  def test_bear_takes_fish_from_river
    @river.fish_add(@fish1)
    @river.fish_add(@fish2)
    @river.bear_takes_fish(@bear, @fish1)
    assert_equal(1, @bear.bear_stomach_count)
    assert_equal(1, @river.fish_count)
  end

  def test_bear_takes_fish_only_if_hungry__when_hungry
    @bear.bear_gets_hungry(@bear.name)
    @river.fish_add(@fish1)
    @river.fish_add(@fish2)
    @river.bear_takes_fish_only_if_hungry(@bear, @fish1, @bear.hungry)
    assert_equal(true, @bear.hungry)
    assert_equal(1, @bear.bear_stomach_count)
    assert_equal(1, @river.fish_count)
  end

  def test_bear_takes_fish_only_if_hungry__when__not_hungry
    @river.fish_add(@fish1)
    @river.fish_add(@fish2)
    @river.bear_takes_fish_only_if_hungry(@bear, @fish1, @bear.hungry)
    assert_equal(false, @bear.hungry)
    assert_equal(0, @bear.bear_stomach_count)
    assert_equal(2, @river.fish_count)
  end


end
