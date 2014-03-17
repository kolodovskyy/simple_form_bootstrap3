module SimpleFormBootstrap3
  module ApplicationHelper
    def horizontal_form_for(object, *args, &block)
      options = args.extract_options!
      options[:wrapper] ||= :horizontal
      options[:html] ||= {}
      options[:html][:role] = 'form'
      options[:html][:class] = [ options[:html][:class], 'form-horizontal' ].compact.join(' ')

      simple_form_for object, *(args << options), &block
    end

    def default_form_for(object, *args, &block)
      options = args.extract_options!
      options[:wrapper] ||= :default
      options[:html] ||= {}
      options[:html][:role] = 'form'

      simple_form_for object, *(args << options), &block
    end

    def inline_form_for(object, *args, &block)
      options = args.extract_options!
      options[:wrapper] ||= :inline
      options[:builder] ||= SimpleForm::PlaceholderFormBuilder
      options[:html] ||= {}
      options[:html][:role] = 'form'
      options[:html][:class] = [ options[:html][:class], 'form-inline' ].compact.join(' ')

      simple_form_for object, *(args << options), &block
    end
  end
end
