require 'delegate'
 
class Base
  def foo
    "foo"
  end
  def bar
    "bar"
  end
end
   

class MyDecorator < SimpleDelegator
  def new_method
    "new_method"
  end
  def foo
     "Overridden #{super}"
  end
end

base = Base.new
base_decorator = MyDecorator.new(base)
p base_decorator.new_method
p base_decorator.foo