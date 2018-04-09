# YNAB API Ruby Library

[![Build Status](https://travis-ci.org/ynab/ynab-sdk-ruby.svg?branch=master)](https://travis-ci.org/ynab/ynab-sdk-ruby)
[![Gem Version](https://badge.fury.io/rb/ynab.svg)](https://rubygems.org/gems/ynab)

**NOTE: The YNAB API is currently only available to Early Access users.  If you are interested in requesting access before the API is generally available, please fill out [this form](https://docs.google.com/forms/d/17plY-CE39Xl3pe2GqyVH1Unre8TjYKs-tkI6jVC4ko4/edit).**

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

ynab = YnabApi::Client.new(access_token)

budget_response = ynab.budgets.get_budgets
budgets = budget_response.data.budgets

budgets.each do |budget|
  puts "Budget Name: #{budget.name}"
end
```

## Examples

See the [examples folder](https://github.com/ynab/ynab-sdk-ruby/tree/master/examples) for example usage scenarios.

## Methods

The following methods are available in this library.

|                       | Method                                                | Description                                                                                            |
|------------------------|-------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| **User**                | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/UserApi.md#get_user](budgets.get_user()[https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/UserApi.md#get_user](                                  | Returns authenticated user information
| **Budgets**                | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/BudgetsApi.md#get_budgets](budgets.get_budgets())                                  | Returns budgets list with summary information                                                          |
|                        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/BudgetsApi.md#get_budget_by_id](budgets.get_budget_by_id(id))                             | Returns a single budget with all related entities |
| **Accounts**               | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/AccountsApi.md#get_accounts](accounts.get_accounts(budget_id))                                | Returns all accounts                                                                                   |
|                        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/AccountsApi.md#get_account_by_id](accounts.get_account_by_id(budget_id, id))                           | Returns a single account                                                                               |
| **Categories**             | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/CategoriesApi.md#get_categories](categories.get_categories(budget_id))                            | Returns all categories grouped by category group.                                                      |
|                        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/CategoriesApi.md#get_category_by_id](categories.get_category_by_id(budget_id, id))                        | Returns a single category                                                                              |
| **Payees**                 | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeesApi.md#get_payees](payees.get_payees(budget_id))                                    | Returns all payees                                                                                     |
|                        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeesApi.md#get_payee_by_id](payees.get_payee_by_id(budget_id, id))                               | Returns single payee                                                                                   |
| **Payee Locations**        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeeLocationsApi.md#get_payee_locations](payee_locations.get_payee_locations(budget_id))                    | Returns all payee locations                                                                            |
|                        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeeLocationsApi.md#get_payee_location_by_id](payee_locations.get_payee_location_by_id(budget_id, id))               | Returns a single payee location                                                                        |
|                        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/PayeeLocationsApi.md#get_payee_locations_by_payee](payee_locations.get_payee_locations_by_payee(budget_id, id))           | Returns all payee locations for the specified payee                                                    |
| **Months**                 | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/MonthsApi.md#get_budget_months](months.get_budget_months(budget_id))                              | Returns all budget months                                                                              |
|                        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/MonthsApi.md#get_budget_month](months.get_budget_month(budget_id, month))                             | Returns a single budget month                                                                          |
| **Transactions**           | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#get_transactions](transactions.get_transactions(budget_id))                        | Returns budget transactions                                                                            |
|                        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#get_transactions_by_account](transactions.get_transactions_by_account(budget_id, id))               | Returns all transactions for a specified account                                                       |
|                        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#get_transactions_by_category](transactions.get_transactions_by_category(budget_id, id))              | Returns all transactions for a specified category                                                      |
|                        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#get_transactions_by_id](transactions.get_transactions_by_id(budget_id, id))                  | Returns a single transaction                                                                           |
|                        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#update_transaction](transactions.update_transaction(budget_id, id, transaction))                      | Updates a transaction                                                                                   |
|                        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#create_transaction](transactions.create_transaction(budget_id, transaction))                      | Creates a new transaction                                                                              |
|                        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/TransactionsApi.md#bulk_create_transactions](transactions.bulk_create_transactions(budget_id, transactions))                 | Creates multiple transactions                                                                          |
| **Scheduled Transactions** | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/ScheduledTransactionsApi.md#get_scheduled_transactions](scheduled_transactions.get_scheduled_transactions(budget_id))      | Returns all scheduled transactions                                                                     |
|                        | [https://github.com/ynab/ynab-sdk-ruby/blob/master/docs/ScheduledTransactionsApi.md#get_scheduled_transaction_by_id](scheduled_transactions.get_scheduled_transaction_by_id(budget_id, id)) | Returns a single scheduled transaction                                                                 |

## Development

- Install dependencies: `bundle`
- Generate latest client based on swagger spec: `rake generate`
- Run tests: `rake spec` or `rspec`
- Publish: Update `gemVersion` in config.json and then `rake generate && rspec && gem build ynab && gem push ynab-0.0.0.gem`

## License

Copyright (c) 2018 You Need A Budget, LLC

Licensed under the Apache-2.0 license
