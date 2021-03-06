# Rspec::Github

[RSpec](https://rspec.info/) formatter compatible with [GitHub Action](https://github.com/features/actions)'s annotations. It supports multiline errors and will set pending specs as warnings:

## Installation
Add the gem to your application's `Gemfile` `test` group:

```ruby
group :test do
  gem 'rspec-github', git: 'https://github.com/RideRoundTrip/rspec-github', branch: 'main', require: false
end
```

And then of course install the gem by executing:

```bash
bundle install
```

## Usage
You can specify the formatter with a command line argument:

```bash
rspec --format RSpec::Github::Formatter
```

And to always run it with this formatter, you can set it in the `.rspec` file:

```
# other configuration
--format RSpec::Github::Formatter
```

Note that you can select multiple formatters so that you can also see other output:
```bash
rspec --format RSpec::Github::Formatter --format progress
rspec --format RSpec::Github::Formatter --format documentation
```

If you want to disable annotations for pending specs you can do that by adding `--tag ~skip` to your command:
```bash
rspec --format RSpec::Github::Formatter --tag ~skip
```

## Development
After checking out the repo, run `bundle install` to install dependencies. Then, run `rake spec` to run the tests.
