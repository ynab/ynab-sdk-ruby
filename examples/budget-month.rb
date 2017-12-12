$:.unshift('../lib');
require 'ynab'
require 'date'

def print_budget_month
  access_token = 'bd7840ad3b4863b8c60bc01cf9533e823781d40daad160664d053f8ba8ce2307'
  ynab = YnabApi::Client.new(access_token)

  budget_id = "f968197b-2863-473a-8974-c2406dbe7f0d"
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
  rescue Exception => e
    puts "ERROR: #{e}"
  end
end

print_budget_month();