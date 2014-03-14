class BaseDecorator < SimpleDelegator
  def initialize(base, view_context)
    super(base)
    @view_context = view_context
  end
  
  def _h
    @view_context
  end

  def link_to_destroy(options={})
    options = options.reverse_merge({text: 'Destroy', confirm_text: 'Are you sure ?'})
    _h.link_to options[:text], options[:url], method: :delete, confirm: options[:confirm_text]
  end
end