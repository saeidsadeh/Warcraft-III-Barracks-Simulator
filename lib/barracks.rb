class Barracks

  attr_reader :food, :gold
  def initialize
    @gold = 1000
    @food = 80
  end

  def train_footman
    return nil unless can_train_footman?
    @gold -= 135
    @food -= 2
    return Footman.new
  end

  def can_train_footman?
    (food > 1) && (gold > 134)
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      return Peasant.new
    end
  end

  def can_train_peasant?
    (food > 5) && (gold > 90)
  end
end
