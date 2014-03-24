module SimpleForm
  class DefaultFormBuilder < SimpleForm::FormBuilder
    def checkbox(attribute_name, options = {}, &block)
      options[:wrapper] ||= :checkbox
      options[:as] ||= :boolean
      input attribute_name, options, &block
    end

    def radio(attribute_name, options = {}, &block)
      options[:wrapper] ||= :radio
      input attribute_name, options, &block
    end
  end
end