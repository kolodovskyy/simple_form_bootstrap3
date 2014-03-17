module SimpleForm
  class HorizontalFormBuilder < SimpleForm::FormBuilder
    def checkbox(attribute_name, options = {}, &block)
      options[:wrapper] ||= :horizontal_checkbox
      input attribute_name, options, &block
    end

    def radio(attribute_name, options = {}, &block)
      options[:wrapper] ||= :horizontal_radio
      input attribute_name, options, &block
    end

    def buttons(options = {}, &block)
      raise ::ArgumentError unless block_given?
      options[:class] ||= 'col-sm-offset-2 col-sm-10'
      @template.content_tag(:div, class: 'form-group') do
        @template.content_tag(:div, class: options[:class]) do
          yield
        end
      end
    end
  end
end