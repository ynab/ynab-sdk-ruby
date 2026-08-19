# Development

## Setup

- Install dependencies: `bundle`
- Install [OpenAPI Generator](https://openapi-generator.tech/) (on macOS: `brew install openapi-generator`)
- Run tests: `bundle exec rake spec` or `rspec`

## Generating

Run `bundle exec rake generate`.  This will generate the API client from the latest OpenAPI spec and bump the version.  The bump defaults to `minor`; pass `major` or `patch` to change it (`bundle exec rake "generate[patch]"`).  Once generated, you should open a PR and merge the changes.

## Publishing

The version that gets published is whatever `lib/ynab/version.rb` on the `main` branch says, so publishing is two steps.

1. Merge a PR that sets the new version.  `bundle exec rake generate` does this for you.  For a release that does not involve re-generating the client, run `bundle exec rake "bump_version_number[minor]"` (or `major` / `patch`), which updates `lib/ynab/version.rb` and `Gemfile.lock` without creating a commit or tag.
2. Run the "Publish" GitHub Actions workflow.  This runs the specs and publishes that version to RubyGems, then tags the commit and creates a GitHub release.

The workflow never changes the version itself.  If the version in `lib/ynab/version.rb` has already been released, the workflow fails before publishing anything.
