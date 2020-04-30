# Rdeunicode

[![Gem Version](https://badge.fury.io/rb/rdeunicode.svg)](https://badge.fury.io/rb/rdeunicode)
[![Commits Since Last Release](https://img.shields.io/github/commits-since/Mordorreal/rdeunicode/v0.1.1.svg)](https://github.com/Mordorreal/rdeunicode/pulse)
[![Build Status](https://img.shields.io/appveyor/build/Mordorreal/rdeunicode)](https://github.com/Mordorreal/rdeunicode/actions)

## Installation

Ensure Rust is installed:

[Rust Downloads](https://www.rust-lang.org/downloads.html)

```
curl -sSf https://static.rust-lang.org/rustup.sh | sh
```

Add this line to your application's Gemfile:

```ruby
gem 'rdeunicode', '~> 0.1.0'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rdeunicode

## Usage

Add the proper require to your project.

```ruby
require "rdeunicode"

Rdeunicode.deunicode('Æneid') # 'AEneid'
Rdeunicode.deunicode('étude') # 'etude'
Rdeunicode.deunicode('北亰') # 'Bei Jing'
Rdeunicode.deunicode('ᔕᓇᓇ') # 'shanana'
Rdeunicode.deunicode('げんまい茶') # 'genmaiCha'
Rdeunicode.deunicode('🦄☣') # 'unicorn biohazard'

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Mordorreal/rdeunicode. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Rdeunicode project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Mordorreal/rdeunicode/blob/master/CODE_OF_CONDUCT.md).

## Changelog

[Changelog](https://github.com/Mordorreal/rdeunicode/blob/master/CHANGELOG.md).
