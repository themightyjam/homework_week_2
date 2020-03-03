class Bear

  attr_accessor :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end


def food_count()
  return @stomach.length()
end 


def add_food (fish)
  @stomach << fish
end




end
