# Development

## Setup

- Install dependencies: `bundle`
- Generate latest client based on swagger spec:
  - Install [OpenAPI Generator](https://openapi-generator.tech/), for macOS: `brew install openapi-generator`
  - Run `bundle exec rake generate`
- Run tests: `bundle exec rake spec` or `rspec`

## Publishing

Run the "Publish" GitHub Actions workflow
