class AuthorDecorator < BaseDecorator
  def awesome
    "#{name} is awesome."
  end

  def age
    "#{super} Years"
  end
end