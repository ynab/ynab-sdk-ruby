# Development

## Setup

- Install dependencies: `bundle`
- Generate latest client based on swagger spec: `rake generate`
- Run tests: `rake spec` or `rspec`

## Releasing

- Commit all changes
- Bump VERSION in `lib/ynab/version.rb`
- Run `rake publish` to publish to RubyGems
