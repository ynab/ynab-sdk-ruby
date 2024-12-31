# Development

## Setup

- Install dependencies: `bundle`
- Install [OpenAPI Generator](https://openapi-generator.tech/) (on macOS: `brew install openapi-generator`)
- Run tests: `bundle exec rake spec` or `rspec`

## Generating

Run `bundle exec rake generate`.  This will generate the API client from the latest OpenAPI spec.  Once generated, you should open a PR and merge the changes.

## Publishing

Run the "Publish" GitHub Actions workflow

Note: Use the Publish workflow to bump the version number in `lib/ynab/version.rb`
