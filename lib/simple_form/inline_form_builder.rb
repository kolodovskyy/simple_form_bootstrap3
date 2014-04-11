module SimpleForm
  class InlineFormBuilder < SimpleForm::PlaceholderFormBuilder
    CHECKBOX_WRAPPER = :inline_checkbox
    RADIO_WRAPPER = :inline_radio
  end
end