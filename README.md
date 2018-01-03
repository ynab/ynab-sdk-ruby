# YNAB API Ruby Library

This is the Ruby client for the YNAB API.

Please read the [YNAB API documentation](https://api.youneedabudget.com) for an
overview of using the API and a complete list of available resources.

## Installation

```
gem install ynab
```

## Usage

To use this client you must
[obtain an access token](https://api.youneedabudget.com/#authentication) from
your [My Account](https://app.youneedabudget.com/settings) page of the YNAB web
app.

```ruby
require 'ynab'

access_token = 'bf0cbb14b4330e9d5f4312a646eb0115b80a169ad1425d3de12e66a389eaafe2'

ynab = YnabApi::Client.new(access_token)

budget_response = ynab.budgets.get_budgets
budgets = budget_response.data.budgets

budgets.each do |budget|
  puts "Budget Name: #{budget.name}"
end
```

## Examples

See the [examples folder](https://github.com/ynab/ynab-sdk-ruby/tree/master/examples) for, well, example usage scenarios.

## Development
Install dependencies:

```
bundle
```

To generate latest based on swagger spec:

```
rake generate
```

To run tests:

```
rake spec
```
 
or 

```
rspec spec
```

## License

Copyright (c) 2018 You Need A Budget, LLC

Licensed under the Apache-2.0 license
