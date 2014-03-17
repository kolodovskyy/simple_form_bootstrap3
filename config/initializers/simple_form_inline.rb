SimpleForm.setup do |config|
  config.wrappers :inline, tag: :div, class: 'form-group', error_class: 'has-error',
                  label_html: { class: 'sr-only' } do |b|
    b.use :html5
    b.use :min_max
    b.use :placeholder

    b.optional :pattern
    b.optional :readonly

    b.use :label
    b.use :input
  end

  config.wrappers :inline_checkbox, tag: :div, class: "form-group", error_class: "has-error" do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: :div, class: 'checkbox' do |c|
      c.wrapper tag: :label do |a|
        a.use :input
        a.use :label_text
      end
    end
  end

  config.wrappers :inline_radio, tag: :div, class: "form-group", error_class: "has-error" do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: :div, class: 'radio' do |c|
      c.wrapper tag: :label do |a|
        a.use :input
        a.use :label_text
      end
    end
  end
end
