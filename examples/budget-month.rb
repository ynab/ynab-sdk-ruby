require 'ynab'
require 'date'

access_token = ENV['YNAB_ACCESS_TOKEN']
ynab = YNAB::API.new(access_token)

budget_id = ENV['YNAB_BUDGET_ID']

begin
  puts 'Fetching month...'

  first_day_of_month_iso = Date.new(Date.today.year, Date.today.month, 1).iso8601
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
rescue YNAB::ApiError => e
  puts "ERROR: id=#{e.id}; name=#{e.name}; detail: #{e.detail}"
end

