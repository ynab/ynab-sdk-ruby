# YNAB API Ruby Library

[![Continuous Integration](https://github.com/ynab/ynab-sdk-ruby/actions/workflows/ci.yml/badge.svg)](https://github.com/ynab/ynab-sdk-ruby/actions/workflows/ci.yml)
[![Gem Version](https://badge.fury.io/rb/ynab.svg)](https://rubygems.org/gems/ynab)

This is the Ruby client for the YNAB API.

Please read the [YNAB API documentation](https://api.ynab.com) for an
overview of using the API and a complete list of available resources.

This client is generated using the [OpenAPI Generator](https://openapi-generator.tech/).

## Installation

```
gem install ynab
```

Note: The current version of this gem (3.0.0) requires Ruby version 3.3 or later. If you are using an older version of Ruby, you can install [version 2.1](https://rubygems.org/gems/ynab/versions/2.1.0) of this gem.

## Usage
To use this client you must
[obtain an access token](https://api.ynab.com/#authentication-overview) from
your [Account Settings](https://app.ynab.com/settings) page of the YNAB web
app.

```ruby
require 'ynab'

access_token = ENV['YNAB_ACCESS_TOKEN']
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

|                            | Method                                                                                                                                                                                                            | Description                                           |
|----------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------|
| **User**                   | [user.get_user()](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/UserApi.md#get_user)                                                                                                                     | Returns authenticated user information                |
| **Budgets**                | [budgets.get_budgets()](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/BudgetsApi.md#get_budgets)                                                                                                         | Returns budgets list with summary information         |
|                            | [budgets.get_budget_by_id(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/BudgetsApi.md#get_budget_by_id)                                                                                      | Returns a single budget with all related entities     |
|                            | [budgets.get_budget_settings_by_id(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/BudgetsApi.md#get_budget_settings_by_id)                                                                    | Returns settings for a budget                         |
| **Accounts**               | [accounts.get_accounts(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/AccountsApi.md#get_accounts)                                                                                            | Returns all accounts                                  |
|                            | [accounts.get_account_by_id(budget_id, account_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/AccountsApi.md#get_account_by_id)                                                                      | Returns a single account                              |
| **Categories**             | [categories.get_categories(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/CategoriesApi.md#get_categories)                                                                                    | Returns all categories grouped by category group.     |
|                            | [categories.get_category_by_id(budget_id, category_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/CategoriesApi.md#get_category_by_id)                                                               | Returns a single category                             |
|                            | [categories.get_month_category_by_id(budget_id, month, category_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/MonthsApi.md#get_month_category_by_id)                                                    | Returns a single category for a specific budget month
| **Payees**                 | [payees.get_payees(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeesApi.md#get_payees)                                                                                                    | Returns all payees                                    |
|                            | [payees.get_payee_by_id(budget_id, payee_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeesApi.md#get_payee_by_id)                                                                                | Returns single payee                                  |
| **Payee Locations**        | [payee_locations.get_payee_locations(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeeLocationsApi.md#get_payee_locations)                                                                 | Returns all payee locations                           |
|                            | [payee_locations.get_payee_location_by_id(budget_id, payee_location_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeeLocationsApi.md#get_payee_location_by_id)                                    | Returns a single payee location                       |
|                            | [payee_locations.get_payee_locations_by_payee(budget_id, payee_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeeLocationsApi.md#get_payee_locations_by_payee)                                     | Returns all payee locations for the specified payee   |
| **Months**                 | [months.get_budget_months(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/MonthsApi.md#get_budget_months)                                                                                      | Returns all budget months                             |
|                            | [months.get_budget_month(budget_id, month)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/MonthsApi.md#get_budget_month)                                                                                 | Returns a single budget month                         |
|                            | [months.update_month_category(budget_id, month, category_id, month_category)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/MonthsApi.md#update_month_category)                                          | Update an existing month category                     |
| **Transactions**           | [transactions.get_transactions(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#get_transactions)                                                                            | Returns budget transactions                           |
|                            | [transactions.get_transactions_by_account(budget_id, account_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#get_transactions_by_account)                                          | Returns all transactions for a specified account      |
|                            | [transactions.get_transactions_by_category(budget_id, category_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#get_transactions_by_category)                                       | Returns all transactions for a specified category     |
|                            | [transactions.get_transaction_by_id(budget_id, transaction_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#get_transaction_by_id)                                                  | Returns a single transaction                          |
|                            | [transactions.create_transaction(budget_id, data)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#create_transaction)                                                                  | Creates a single transaction                          |
|                            | [transactions.create_transactions(budget_id, data)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#create_transaction)                                                                 | Creates multiple transactions                         |
|                            | [transactions.update_transaction(budget_id, id, data)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#update_transaction)                                                              | Updates a single transaction                          |
|                            | [transactions.update_transactions(budget_id, data)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#update_transactions)                                                                | Updates multiple transactions                         |
|                            | [transactions.delete_transaction(budget_id, transaction_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#delete_transaction)                                                        | Deletes a single transaction                                     |
|                            | [transactions.import_transactions(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#import_transactions)                                                                      | Imports transactions                       |
| **Scheduled Transactions** | [scheduled_transactions.get_scheduled_transactions(budget_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/ScheduledTransactionsApi.md#get_scheduled_transactions)                                     | Returns all scheduled transactions                    |
|                            | [scheduled_transactions.get_scheduled_transaction_by_id(budget_id, scheduled_transaction_id)](https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/ScheduledTransactionsApi.md#get_scheduled_transaction_by_id) | Returns a single scheduled transaction                |

## License

Copyright (c) 2024 You Need A Budget, LLC

Licensed under the Apache-2.0 license
