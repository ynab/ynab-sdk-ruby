require 'ynab'

def print_category_info
  access_token = ENV['YNAB_ACCESS_TOKEN']
  puts "access_token = " + access_token

  ynab = YNAB::API.new(access_token)

  budget_id = ENV['YNAB_BUDGET_ID']
  category_id = 'a191ac84-de09-not-real-6c5ed8cfdabe'

  begin
    puts 'Fetching category...'
    category_response = ynab.categories.get_category_by_id(budget_id, category_id)
    category = category_response.data.category

    puts "==========="
    puts "CATEGORY"
    puts "==========="
    puts "      Name: #{category.name}"
    puts "  Budgeted: #{category.budgeted}"
    puts "   Balance: #{category.balance}"
  rescue => e
    puts "ERROR: #{e}"
  end
end

print_category_info
