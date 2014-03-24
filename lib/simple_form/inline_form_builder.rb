module SimpleForm
  class InlineFormBuilder < SimpleForm::PlaceholderFormBuilder
    def checkbox(attribute_name, options = {}, &block)
      options[:wrapper] ||= :inline_checkbox
      super
    end

    def radio(attribute_name, options = {}, &block)
      options[:wrapper] ||= :inline_radio
      super
    end
  end
end