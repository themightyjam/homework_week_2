class River

  attr_accessor :name, :length

  def initialize(name, length)
    @name = name
    @length = length
    @fishes = []
  end

  def fish_count()
    return @fishes.length()
  end

  def lose_fish(fish)
    @fishes.slice!(fish)
  end


end
