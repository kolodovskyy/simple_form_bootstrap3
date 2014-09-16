module SimpleForm
  class HorizontalFormBuilder < SimpleForm::DefaultFormBuilder
    CHECKBOX_WRAPPER = :horizontal_checkbox
    RADIO_WRAPPER = :horizontal_radio

    def buttons(options = {}, &block)
      raise ::ArgumentError unless block_given?
      options[:class] ||= 'col-sm-offset-3 col-sm-9 col-md-offset-3 col-md-9 col-lg-offset-2 col-lg-10'
      @template.content_tag(:div, class: 'form-group') do
        @template.content_tag(:div, class: options[:class]) do
          yield
        end
      end
    end

    def collection_check_boxes(method, collection, value_method, text_method, options = {}, html_options = {}, &block)
      raise ::ArgumentError, 'Inline is unsupported for horizontal form' if options.key? :inline
      options[:item_wrapper_class] ||= 'col-sm-offset-3 col-sm-9 col-md-offset-3 col-md-9 col-lg-offset-2 col-lg-10 checkbox'
      super
    end

    def collection_radio_buttons(method, collection, value_method, text_method, options = {}, html_options = {}, &block)
      raise ::ArgumentError, 'Inline is unsupported for horizontal form' if options.key? :inline
      options[:item_wrapper_class] ||= 'col-sm-offset-3 col-sm-9 col-md-offset-3 col-md-9 col-lg-offset-2 col-lg-10 radio'
      super
    end
  end
end