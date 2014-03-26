module SimpleForm
  class DefaultFormBuilder < SimpleForm::FormBuilder
    map_type :datetime, to: SimpleForm::Inputs::DateTimePickerInput
    map_type :date,     to: SimpleForm::Inputs::DatePickerInput

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