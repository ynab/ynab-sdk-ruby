$:.unshift('../lib')
require 'ynab'

def print_category_info
  access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'
  ynab = YnabApi::Client.new(access_token)

  budget_id = "f968197b-2863-not-real-c2406dbe7f0d"
  category_id = "a191ac84-de09-not-real-6c5ed8cfdabe"

  begin
    puts "Fetching category..."
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

print_category_info()
