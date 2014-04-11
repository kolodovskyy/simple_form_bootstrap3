module SimpleForm
  class DefaultFormBuilder < SimpleForm::FormBuilder
    CHECKBOX_WRAPPER = :checkbox
    RADIO_WRAPPER = :radio

    map_type :datetime, to: SimpleForm::Inputs::DateTimePickerInput
    map_type :date,     to: SimpleForm::Inputs::DatePickerInput

    def checkbox(attribute_name, options = {}, &block)
      options[:wrapper] ||= self.class::CHECKBOX_WRAPPER
      options[:as] ||= :boolean
      input attribute_name, options, &block
    end

    def radio(attribute_name, options = {}, &block)
      options[:wrapper] ||= self.class::RADIO_WRAPPER
      input attribute_name, options, &block
    end

    def input(attribute_name, options = {}, &block)
      options[:wrapper] ||= self.class::CHECKBOX_WRAPPER if options[:as] == :boolean
      super
    end
  end
end