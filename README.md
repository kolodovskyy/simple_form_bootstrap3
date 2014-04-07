# Rails form generator with simple_form and bootstrap3

## Installation

Add this line to your application's Gemfile:

    gem 'simple_form_bootstrap3'

or this line:

    gem 'simple_form_bootstrap3', git: 'https://github.com/kolodovskyy/simple_form_bootstrap3.git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_form_bootstrap3
    
See https://github.com/twbs/bootstrap-sass to configure bootstrap gem.

Add to application.css:

    *= require bootstrap-datepicker
    *= require bootstrap-datetimepicker

Add to application.js:

    //= require bootstrap-datepicker
    //= require bootstrap-datetimepicker

## Usage (examples with haml)

    # horizontal form
    = horizontal_form_for @user do |f|
        = f.input :name
        = f.input :password
        = f.checkbox :remember_me
        = f.buttons do
            = f.button :submit
    
    # default form
    = default_form_for @user do |f|
        = f.input :name
        = f.checkbox :admin
        = f.button :submit
    
    # inline form
    = inline_form_for @user do |f|
        = f.input :name
        = f.checkbox :remember_me
        = f.password
        = f.button :submit
    
    # compact form will use placeholder and no labels
    = compact_form_for @user do |f|
        = f.input :name
    
## Links

Thanks for Sebastien MALOT`s [datepicker](https://github.com/smalot/bootstrap-datepicker) and
[datetimepicker](https://github.com/smalot/bootstrap-datetimepicker).

## TODO

Add inline-group wrapper.

## Maintainers and Authors

Yuriy Kolodovskyy (https://github.com/kolodovskyy)

## License

MIT License. Copyright 2014 [Yuriy Kolodovskyy](http://twitter.com/kolodovskyy)
