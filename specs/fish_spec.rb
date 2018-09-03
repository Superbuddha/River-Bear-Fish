require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")

class FishTest < MiniTest::Test

  def setup

    @fish1 = Fish.new("Salmon")

  end

  def test_fish_name
    assert_equal("Salmon", @fish1.name)
  end

end
