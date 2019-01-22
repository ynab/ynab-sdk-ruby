require 'date'
require 'ynab'

access_token = ENV['YNAB_ACCESS_TOKEN']
ynab = YNAB::API.new(access_token)

budget_id = ENV['YNAB_BUDGET_ID']
category_id = 'a191ac84-de09-not-real-6c5ed8cfdabe'
month = '2019-01-01'

data = {
  category: {
    budgeted: 20382
  }
}

begin
  # Update budgeted amount to 203.82 in 2018-09-01 for category_id
  response = ynab.categories.update_month_category(budget_id, month, category_id, data)
  month_category_response = response.data.category
  puts "[budgeted: #{month_category_response.budgeted}, balance: #{month_category_response.balance}]"
rescue YNAB::ApiError => e
  puts "ERROR: id=#{e.id}; name=#{e.name}; detail: #{e.detail}"
end

