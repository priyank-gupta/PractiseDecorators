module ApplicationHelper
  def store_decorate(model)
     # Here I'm hard-coding to always decorate with MyDecorator,
     # but it could also be passed in as a method arg, or guessed
     # from the model.class name, or from a differnet model attribute
     # like model.presenter_class, or taken from configuration, or
     # some combination -- whatever meets the needs of your design. 
     decorated = BaseDecorator.new(model, self)
     yield(decorated) if block_given?
     decorated
  end
end
