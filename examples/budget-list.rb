require 'ynab'

def print_budget_list
  access_token = ENV['YNAB_ACCESS_TOKEN']
  puts "access_token = " + access_token
  ynab = YNAB::API.new(access_token)

  puts "Fetching budgets..."
  begin
    budget_response = ynab.budgets.get_budgets
    budgets = budget_response.data.budgets

    puts "==========="
    puts "BUDGET LIST"
    puts "==========="

    budgets.each do |budget|
      puts "[id: #{budget.id}, name: #{budget.name}]"
    end
  rescue => e
    puts "ERROR: #{e}"
  end
end

print_budget_list
