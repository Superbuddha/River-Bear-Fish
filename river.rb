class River

  attr_reader :name

  def initialize(name, fish_population)
    @name = name
    @fish_population = []
  end

  def fish_count
    return @fish_population.count
  end

  def fish_add(fish_name)
    @fish_population << fish_name
  end

  def fish_remove(fish_name)
    @fish_population.delete(fish_name)
  end

  def bear_takes_fish(bear_obj, fish_obj)
    bear_obj.add_to_bear_stomach(fish_obj)
    @fish_population.delete(fish_obj)
  end

  def bear_takes_fish_only_if_hungry(bear_obj, fish_obj, hungry)
    if hungry == true
      bear_obj.add_to_bear_stomach(fish_obj)
      @fish_population.delete(fish_obj)
    else
      return "#{@bear} isn't hungry!"
    end
  end

end
