SimpleForm.setup do |config|
  config.wrappers :default, tag: :div, class: 'form-group', error_class: 'has-error' do |b|
    b.use :html5
    b.use :min_max
    b.use :maxlength
    b.use :placeholder

    b.optional :pattern
    b.optional :readonly

    b.use :label
    b.use :input
    b.use :error, wrap_with: { tag: :span, class: 'help-block' }
    b.use :hint, wrap_with: { tag: :p, class: 'help-block' }
  end

  config.wrappers :checkbox, tag: :div, class: "form-group", error_class: "has-error" do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: :div, class: 'checkbox' do |c|
      c.wrapper tag: :label do |a|
        a.use :input
        a.use :label_text
      end
    end
    b.use :error, wrap_with: { tag: :span, class: "help-block" }
    b.use :hint,  wrap_with: { tag: :p, class: "help-block" }
  end

  config.wrappers :radio, tag: :div, class: "form-group", error_class: "has-error" do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: :div, class: 'radio' do |c|
      c.wrapper tag: :label do |a|
        a.use :input
        a.use :label_text
      end
    end
    b.use :error, wrap_with: { tag: :span, class: "help-block" }
    b.use :hint,  wrap_with: { tag: :p, class: "help-block" }
  end
end
