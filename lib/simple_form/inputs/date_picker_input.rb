module SimpleForm
  module Inputs
    class DatePickerInput < Base
      def input
        template.content_tag(:div, class: 'input-group date datepicker') do
          template.concat span_calendar
          template.concat @builder.datetime_field(attribute_name, input_html_options)
        end
      end

      private

      def input_html_options
        { class: 'form-control', readonly: true, value: object.send(attribute_name).strftime("%Y-%m-%d") }
      end

      def span_calendar
        template.content_tag(:span, class: 'input-group-addon') do
          template.concat icon_calendar
        end
      end

      def icon_calendar
        '<i class="glyphicon glyphicon-calendar"></i>'.html_safe
      end
    end
  end
end
