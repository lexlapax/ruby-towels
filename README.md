# Towels

*Towels for ruby - jack of all for ruby - ala hitchhiker's guid to galaxy towels*

Make ruby fun to experiment with, do quick calculations, try out things.. and then move on to your favorite ruby dev environment of choice

- start with a simple dsl driven gui framework for ruby like shoes3, then add other simple wrappers
- wrappers include 
    - app - a write and run app to test ruby
    - box - a write and run (interactive) app specifically for media experimentation
        - audio
        - images
        - video
    - gshell - a full runtime ruby environment with pry and output in a gui
        - wshell - similar in a web notebook
    - pluggable wrappers - write your own
    - cmd  - a command line only (the default wrapper)
        - could replace irb or pry but may be heavy weight (besides it's going to rely on them)
        - can be used for replacement of popular shell commands - find, grep, sed etc 
        - also pluggable


Towels is not an IDE

Towels is not shoes3 or shoes3+

Towels is not ruby-processing



## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add towels

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install towels

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lexlapax/ruby-towels.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
