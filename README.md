# NestedFieldsStimulus

This gem provides generators, helpers, and a Stimulus controller to manage nested forms in Rails applications. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nested_fields_stimulus'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install nested_fields_stimulus

To install the Stimulus controller (and Stimulus itself, if you haven't already):

    $ rails generate nested_fields_stimulus:install

## Usage

Your application must be set up with `accepts_nested_attributes_for [:your_association]` in the model, `[your_association]_attributes` in your Strong Parameters declaration, and `fields_for` in your form. With those requirements taken care of, this gem will make it easy to add an "Add Another" button to inject a new nested form, and a one-click delete button for each nested form.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/walterdavis/nested_fields_stimulus. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/walterdavis/nested_fields_stimulus/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NestedFieldsStimulus project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/walterdavis/nested_fields_stimulus/blob/master/CODE_OF_CONDUCT.md).
