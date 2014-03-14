module Decorator
  def initialize(component)
    @component = component
  end

  def method_missing(meth, *args)
    if @component.respond_to?(meth)
      @component.send(meth, *args)
    else
      super
    end
  end

  def respond_to?(meth)
    @component.respond_to?(meth)
  end
end

class Coffee
  def cost
    2
  end

  def origin
    "Colombia"
  end
end

class Milk
  include Decorator

  def cost
    @component.cost + 0.4
  end
end

class Sugar
  include Decorator

  def cost
    @component.cost + 0.2
  end
end

coffee = Coffee.new
p Sugar.new(Milk.new(coffee)).cost   # 2.6
p Sugar.new(Sugar.new(coffee)).cost  # 2.4
p Sugar.new(Milk.new(coffee)).origin # Colombia
p Sugar.new(Milk.new(coffee)).class  # Sugar # drawback