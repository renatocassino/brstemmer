# Brstemmer

Algorithm to implement the stemmer in portuguese language.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'brstemmer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install brstemmer

## Usage

```ruby
    require 'brstemmer'
    puts "Correndo".brstemmer
    # Corr

    puts "pulei".brstemmer
    # pul
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tacnoman/brstemmer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

### Test

To run tests:

```
    $ bundle exec rspec
```

### TODO!
Write more tests for rules augmentative_reduction, noun_reduction, verb_reduction, vowel_reduction and accent_reduction.

# Changelog

### 0.1.1
- Fix bug with suffix size

### 0.1.0
- Initial commit
- Stemmer br
- Basic tests