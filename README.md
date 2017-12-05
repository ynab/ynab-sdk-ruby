# YNAB API Ruby Library

The YNAB API Ruby library provides access to the YNAB API from
applications written in Ruby.

Please read the [YNAB API documentation](https://api.youneedabudget.com) for an
overview of using the API and a complete list of the available resources.

## Installation

```
gem install ynab
```

## Usage

To use this client, you must
[obtain an access token](https://api.youneedabudget.com/#authentication) from
the [My Account](https://app.youneedabudget.com/settings) area of the YNAB web
application.

```
require 'ynab'
access_token = "bf0cbb14b4330e9d5f4312a646eb0115b80a169ad1425d3de12e66a389eaafe2";
ynab = YnabApi::Client.new(access_token)

budget_response = ynab.budgets.get_budgets
budgets = budget_response.data.budgets
budgets.each do |budget|
  puts "Budget Name: #{budget.name}"
end
```

## Examples

See the [examples](https://github.com/ynab/ynab-sdk-ruby/tree/master/examples)
folder for example usage scenarios.

## Development

To generate latest based on swagger spec:

```
rake generate
```

To run tests:

```
rake spec
```

## License

Copyright (c) 2017 You Need A Budget, LLC

Licensed under the Apache-2.0 license