$:.unshift('../lib');
require 'ynab'

def print_category_info
  access_token = '4cada065-8eb7-4af6-b964-bda34754749e'
  ynab = YnabApi::Client.new(access_token)

  budget_id = "2742a099-d5c9-4e54-88b0-dd44ec9315d9"
  category_id = "a191ac84-de09-4bee-a434-6c5ed8cfdabe"

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
  rescue Exception => e
    puts "ERROR: #{e}"
  end
end

print_category_info();