require 'ynab'
require 'date'

def print_budget_month
  access_token = ENV['YNAB_ACCESS_TOKEN']
  puts "access_token = " + access_token

  ynab = YNAB::API.new(access_token)

  budget_id = "f968197b-2863-not-real-c2406dbe7f0d"
  first_day_of_month_iso = Date.new(Date.today.year, Date.today.month, 1).iso8601

  begin
    puts "Fetching month..."
    current_date = Date.today
    first_day_of_month = Date.new(current_date.year, current_date.month, 1)
    month_response = ynab.months.get_budget_month(budget_id, first_day_of_month_iso)
    budget_month = month_response.data.month

    puts "============"
    puts "BUDGET MONTH"
    puts "============"
    puts "         Month: #{budget_month.month}"
    puts "          Note: #{budget_month.note}"
    puts "To Be Budgeted: #{budget_month.to_be_budgeted}"
    puts "  Age of Money: #{budget_month.age_of_money}"
    puts "    Categories: "

    budget_month.categories.each do |category|
      puts "                #{category.name} - $#{category.balance}"
    end
  rescue => e
    puts "ERROR: #{e}"
  end
end

print_budget_month
