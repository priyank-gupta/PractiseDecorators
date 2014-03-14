class HardBindBooks < BaseDecorator
  def price
    super + 10
  end

  def title
    "#{super} (Hard Bind)"
  end
end