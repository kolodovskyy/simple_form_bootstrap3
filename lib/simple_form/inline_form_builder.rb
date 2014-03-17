module SimpleForm
  class InlineFormBuilder < SimpleForm::PlaceholderFormBuilder
    def checkbox(attribute_name, options = {}, &block)
      options[:wrapper] ||= :inline_checkbox
      input attribute_name, options, &block
    end

    def radio(attribute_name, options = {}, &block)
      options[:wrapper] ||= :inline_radio
      input attribute_name, options, &block
    end
  end
end