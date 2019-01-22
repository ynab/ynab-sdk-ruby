require 'ynab'

access_token = ENV['YNAB_ACCESS_TOKEN']
ynab = YNAB::API.new(access_token)

begin
  puts 'Fetching budgets...'

  budget_response = ynab.budgets.get_budgets
  budgets = budget_response.data.budgets

  puts '==========='
  puts 'BUDGET LIST'
  puts '==========='

  budgets.each do |budget|
    puts "[id: #{budget.id}, name: #{budget.name}]"
  end
rescue YNAB::ApiError => e
  puts "ERROR: id=#{e.id}; name=#{e.name}; detail: #{e.detail}"
end
