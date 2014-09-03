module SimpleForm
  module Inputs
    class DatePickerInput < Base
      def input
        @builder.datetime_field(attribute_name, input_html_options)
      end

      private

      def input_html_options
        if options.key? :value
          value = options[:value]
        elsif object.respond_to?(attribute_name)
          value = object.send(attribute_name)
        else
          value = ''
        end

        value = Time.zone.parse(value) if value.is_a?(String)
        value = value.strftime("%Y-%m-%d") if value.respond_to?(:strftime)

        { class: 'form-control text-center date datepicker', value: value.presence || '' }
      end
    end
  end
end
