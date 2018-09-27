# YNAB API Ruby Library

[![Build Status](https://travis-ci.org/ynab/ynab-sdk-ruby.svg?branch=master)](https://travis-ci.org/ynab/ynab-sdk-ruby)
[![Gem Version](https://badge.fury.io/rb/ynab.svg)](https://rubygems.org/gems/ynab)

This is the Ruby client for the YNAB API.

Please read the [YNAB API documentation](https://api.youneedabudget.com) for an
overview of using the API and a complete list of available resources.

This client is generated using the [Swagger Code Generator](https://github.com/swagger-api/swagger-codegen).

## Installation

```
gem install ynab
```

## Usage

To use this client you must
[obtain an access token](https://api.youneedabudget.com/#authentication-overview) from
your [My Account](https://app.youneedabudget.com/settings) page of the YNAB web
app.

```ruby
require 'ynab'

access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'

ynab_api = YNAB::API.new(access_token)

budget_response = ynab_api.budgets.get_budgets
budgets = budget_response.data.budgets

budgets.each do |budget|
  puts "Budget Name: #{budget.name}"
end
```

## Examples

See the [examples folder](https://github.com/ynab/ynab-sdk-ruby/tree/master/examples) for example usage scenarios.

## Methods

The following methods are available in this library.

|                            | Method                                                                                                                                                                                                            | Description                                           |   |
|----------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------|---|
| **User**                   | [user.get_user()](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/UserApi.md#get_user)                                                                                                                     | Returns authenticated user information                |   |
| **Budgets**                | [budgets.get_budgets()](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/BudgetsApi.md#get_budgets)                                                                                                         | Returns budgets list with summary information         |   |
|                            | [budgets.get_budget_by_id(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/BudgetsApi.md#get_budget_by_id)                                                                                      | Returns a single budget with all related entities     |   |
|                            | [budgets.get_budget_settings_by_id(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/BudgetsApi.md#get_budget_settings_by_id)                                                                    | Returns settings for a budget                         |   |
| **Accounts**               | [accounts.get_accounts(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/AccountsApi.md#get_accounts)                                                                                            | Returns all accounts                                  |   |
|                            | [accounts.get_account_by_id(budget_id, account_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/AccountsApi.md#get_account_by_id)                                                                      | Returns a single account                              |   |
| **Categories**             | [categories.get_categories(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/CategoriesApi.md#get_categories)                                                                                    | Returns all categories grouped by category group.     |   |
|                            | [categories.get_category_by_id(budget_id, category_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/CategoriesApi.md#get_category_by_id)                                                               | Returns a single category                             |   |
| **Payees**                 | [payees.get_payees(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeesApi.md#get_payees)                                                                                                    | Returns all payees                                    |   |
|                            | [payees.get_payee_by_id(budget_id, payee_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeesApi.md#get_payee_by_id)                                                                                | Returns single payee                                  |   |
| **Payee Locations**        | [payee_locations.get_payee_locations(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeeLocationsApi.md#get_payee_locations)                                                                 | Returns all payee locations                           |   |
|                            | [payee_locations.get_payee_location_by_id(budget_id, payee_location_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeeLocationsApi.md#get_payee_location_by_id)                                    | Returns a single payee location                       |   |
|                            | [payee_locations.get_payee_locations_by_payee(budget_id, payee_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeeLocationsApi.md#get_payee_locations_by_payee)                                     | Returns all payee locations for the specified payee   |   |
| **Months**                 | [months.get_budget_months(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/MonthsApi.md#get_budget_months)                                                                                      | Returns all budget months                             |   |
|                            | [months.get_budget_month(budget_id, month)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/MonthsApi.md#get_budget_month)                                                                                 | Returns a single budget month                         |   |
|                            | [months.get_month_category_by_id(budget_id, month, category_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/MonthsApi.md#get_month_category_by_id)                                                   | Returns a single category for a specific budget month |   |
|                            | [months.update_month_category(budget_id, month, category_id, month_category)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/MonthsApi.md#update_month_category)                                         | Update an existing month category                     |   |
| **Transactions**           | [transactions.get_transactions(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#get_transactions)                                                                            | Returns budget transactions                           |   |
|                            | [transactions.get_transactions_by_account(budget_id, account_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#get_transactions_by_account)                                          | Returns all transactions for a specified account      |   |
|                            | [transactions.get_transactions_by_category(budget_id, category_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#get_transactions_by_category)                                       | Returns all transactions for a specified category     |   |
|                            | [transactions.get_transaction_by_id(budget_id, transaction_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#get_transaction_by_id)                                                  | Returns a single transaction                          |   |
|                            | [transactions.update_transaction(budget_id, id, transaction)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#update_transaction)                                                       | Updates a transaction                                 |   |
|                            | [transactions.create_transaction(budget_id, save_transactions)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#create_transaction)                                                           | Creates one or multiple transactions                             |   |
|                            | [transactions.bulk_create_transactions(budget_id, transactions)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#bulk_create_transactions)                                              | Creates multiple transactions                         |   |
| **Scheduled Transactions** | [scheduled_transactions.get_scheduled_transactions(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/ScheduledTransactionsApi.md#get_scheduled_transactions)                                     | Returns all scheduled transactions                    |   |
|                            | [scheduled_transactions.get_scheduled_transaction_by_id(budget_id, scheduled_transaction_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/ScheduledTransactionsApi.md#get_scheduled_transaction_by_id) | Returns a single scheduled transaction                |   |



## Development

- Install dependencies: `bundle`
- Generate latest client based on swagger spec: `rake generate`
- Run tests: `rake spec` or `rspec`

## Releasing

- Generate latest with `rake generate`
- Commit all changes
- Bump `gemVersion` in config.json
- Run `rake publish` to publish to RubyGems

## License

Copyright (c) 2018 You Need A Budget, LLC

Licensed under the Apache-2.0 license
