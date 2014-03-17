module SimpleForm
  module ActionViewExtensions
    module BootstrapFormHelper
      def horizontal_form_for(object, *args, &block)
        options = args.extract_options!
        options[:wrapper] ||= :horizontal
        options[:builder] ||= SimpleForm::HorizontalFormBuilder
        options[:html] ||= {}
        options[:html][:role] = 'form'
        options[:html][:class] = [ options[:html][:class], 'form-horizontal' ].compact.join(' ')

        simple_form_for object, *(args << options), &block
      end

      def default_form_for(object, *args, &block)
        options = args.extract_options!
        options[:wrapper] ||= :default
        options[:builder] ||= SimpleForm::DefaultFormBuilder
        options[:html] ||= {}
        options[:html][:role] = 'form'

        simple_form_for object, *(args << options), &block
      end

      def inline_form_for(object, *args, &block)
        options = args.extract_options!
        options[:wrapper] ||= :inline
        options[:builder] ||= SimpleForm::InlineFormBuilder
        options[:html] ||= {}
        options[:html][:role] = 'form'
        options[:html][:class] = [ options[:html][:class], 'form-inline' ].compact.join(' ')

        simple_form_for object, *(args << options), &block
      end
    end
  end
end

ActionView::Base.send :include, SimpleForm::ActionViewExtensions::BootstrapFormHelper
