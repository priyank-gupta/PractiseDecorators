class Coffee
  def cost
    2
  end

  def origin
    "Colombia"
  end
end

class Milk
  def initialize(component)
    @component = component
  end

  def cost
    @component.cost + 0.4
  end
end

class Sugar
  def initialize(component)
    @component = component
  end

  def cost
    @component.cost + 0.2
  end
end

coffee = Coffee.new
p Sugar.new(Milk.new(coffee)).cost #benefit
p Sugar.new(Sugar.new(coffee)).cost #benefit
p Sugar.new(Milk.new(coffee)).class #drawback
p Milk.new(coffee).origin #drawback