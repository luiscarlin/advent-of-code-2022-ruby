# Advent of Code 2022 Ruby

## Dependencies

- [Ruby](https://www.ruby-lang.org/en/). Written with version [2.7.0](https://www.ruby-lang.org/en/news/2019/12/25/ruby-2-7-0-released/) - _[docs](https://docs.ruby-lang.org/en/2.7.0/)_.

## Usage

Install dependencies

```bash
# install the bundler gem
gem install bundler

# installs all dependencies
bundler install
```

Start a new challenge

```bash
./new.sh day01
```

Run a challenge

```bash
ruby ./day02/day02.rb
```

Running tests

```bash
# run all tests
bundler exec rake test

# run a specific test
bundler exec rspec ./day02/day02_spec.rb
```

Run linter

```bash
bundler exec rake lint
```
