require 'ynab'

def print_budget_list
  access_token = ENV['YNAB_ACCESS_TOKEN']
  ynab = YNAB::API.new(access_token)

  puts 'Fetching budgets...'
  begin
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
end

print_budget_list
