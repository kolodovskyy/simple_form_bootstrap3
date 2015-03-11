[
  SimpleForm::Inputs::CollectionSelectInput,
  SimpleForm::Inputs::DateTimeInput,
  SimpleForm::Inputs::FileInput,
  SimpleForm::Inputs::GroupedCollectionSelectInput,
  SimpleForm::Inputs::NumericInput,
  SimpleForm::Inputs::PasswordInput,
  SimpleForm::Inputs::RangeInput,
  SimpleForm::Inputs::StringInput,
  SimpleForm::Inputs::TextInput
].each do |input_class|
  input_class.class_eval do
    def input_html_classes_with_extra
      classes = input_html_classes_without_extra
      classes.include?('form-control') ? classes : classes.push('form-control')
    end
    alias_method_chain :input_html_classes, :extra
  end
end

SimpleForm::Components::Labels.class_eval do
  def label_text_with_spaces(wrapper_options = nil)
    " #{label_text_without_spaces(wrapper_options)} ".html_safe
  end
  alias_method_chain :label_text, :spaces
end

SimpleForm.setup do |config|
  config.boolean_style = :inline
  config.button_class = 'btn btn-primary'
  config.error_notification_tag = :div
  config.error_notification_class = 'alert alert-danger'
  config.browser_validations = false
  config.default_wrapper = :default

  #config.wrappers :prepend, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
  #  b.use :html5
  #  b.use :placeholder
  #  b.wrapper tag: 'div', class: 'controls' do |input|
  #    input.wrapper tag: 'div', class: 'input-group' do |prepend|
  #      prepend.use :label , class: 'input-group-addon' ###Please note setting class here fro the label does not currently work (let me know if you know a workaround as this is the final hurdle)
  #      prepend.use :input
  #    end
  #    input.use :hint,  wrap_with: { tag: 'span', class: 'help-block' }
  #    input.use :error, wrap_with: { tag: 'span', class: 'help-block has-error' }
  #  end
  #end
  #
  #config.wrappers :append, tag: 'div', class: 'form-group', error_class: 'has-error' do |b|
  #  b.use :html5
  #  b.use :placeholder
  #  b.wrapper tag: 'div', class: 'controls' do |input|
  #    input.wrapper tag: 'div', class: 'input-group' do |prepend|
  #      prepend.use :input
  #      prepend.use :label , class: 'input-group-addon' ###Please note setting class here fro the label does not currently work (let me know if you know a workaround as this is the final hurdle)
  #    end
  #    input.use :hint,  wrap_with: { tag: 'span', class: 'help-block' }
  #    input.use :error, wrap_with: { tag: 'span', class: 'help-block has-error' }
  #  end
  #end
end
