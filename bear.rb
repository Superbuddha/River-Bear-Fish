class Bear

attr_accessor :name, :type, :hungry

def initialize(name, type, stomach, hungry)
  @name = name
  @type = type
  @stomach = []
  @hungry = hungry
end

def bear_gets_hungry(bear_name)
  @hungry = true
  return "#{bear_name}'s stomach is empty"
end

def bear_stomach_count()
  return @stomach.length
end

def add_to_bear_stomach(fish)
  @stomach << fish
end

def roar
  return "ROAR"
end

end
