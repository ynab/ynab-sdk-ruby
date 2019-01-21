require 'ynab'

access_token = ENV['YNAB_ACCESS_TOKEN']
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
rescue YNAB::ApiError => e
  puts "ERROR: id=#{e.id}; name=#{e.name}; detail: #{e.detail}"
end
