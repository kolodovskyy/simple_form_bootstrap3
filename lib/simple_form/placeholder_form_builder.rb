module SimpleForm
  class PlaceholderFormBuilder < SimpleForm::FormBuilder
    def input(attribute_name, options = {}, &block)
      if options[:placeholder].nil?
        options[:placeholder] ||= object.class.respond_to?(:human_attribute_name) ?
          object.class.human_attribute_name(attribute_name.to_s) : attribute_name.to_s.humanize
      end
      options[:label] = false if options[:label].nil?

      super
    end
  end
end
