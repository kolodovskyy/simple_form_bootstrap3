module SimpleForm
  class HorizontalFormBuilder < SimpleForm::DefaultFormBuilder
    def checkbox(attribute_name, options = {}, &block)
      options[:wrapper] ||= :horizontal_checkbox
      super
    end

    def radio(attribute_name, options = {}, &block)
      options[:wrapper] ||= :horizontal_radio
      super
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