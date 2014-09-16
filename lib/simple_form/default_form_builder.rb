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

    def collection_check_boxes(method, collection, value_method, text_method, options = {}, html_options = {}, &block)
      options[:collection_wrapper_tag] = :div unless options.key? :collection_wrapper_tag
      options[:collection_wrapper_class] = 'form-group' unless options.key? :collection_wrapper_class
      if options[:inline]
        options[:item_wrapper_tag] = nil
      else
        options[:item_wrapper_tag] = :div unless options.key? :item_wrapper_tag
        options[:item_wrapper_class] = 'checkbox' unless options.key? :item_wrapper_class
      end

      if block_given?
        super
      else
        super do |input|
          input.label(options[:inline] ? { class: 'checkbox-inline' } : {} ) { input.check_box + input.text }
        end
      end
    end

    def collection_radio_buttons(method, collection, value_method, text_method, options = {}, html_options = {}, &block)
      options[:collection_wrapper_tag] = :div unless options.key? :collection_wrapper_tag
      options[:collection_wrapper_class] = 'form-group' unless options.key? :collection_wrapper_class
      if options[:inline]
        options[:item_wrapper_tag] = nil
      else
        options[:item_wrapper_tag] = :div unless options.key? :item_wrapper_tag
        options[:item_wrapper_class] = 'radio' unless options.key? :item_wrapper_class
      end

      if block_given?
        super
      else
        super do |input|
          input.label(options[:inline] ? { class: 'radio-inline' } : {} ) { input.radio_button + input.text }
        end
      end
    end
  end
end