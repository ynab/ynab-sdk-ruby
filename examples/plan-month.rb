require 'ynab'
require 'date'

access_token = ENV['YNAB_ACCESS_TOKEN']
ynab = YNAB::API.new(access_token)

plan_id = ENV['YNAB_plan_id']

begin
  puts 'Fetching month...'

  first_day_of_month_iso = Date.new(Date.today.year, Date.today.month, 1).iso8601

  month_response = ynab.months.get_plan_month(plan_id, first_day_of_month_iso)
  plan_month = month_response.data.month

  puts "============"
  puts "PLAN MONTH"
  puts "============"
  puts "         Month: #{plan_month.month}"
  puts "          Note: #{plan_month.note}"
  puts "To Be Budgeted: #{plan_month.to_be_budgeted}"
  puts "  Age of Money: #{plan_month.age_of_money}"
  puts "    Categories: "

  budget_month.categories.each do |category|
    puts "                #{category.name} - $#{category.balance}"
  end
rescue YNAB::ApiError => e
  puts "ERROR: id=#{e.id}; name=#{e.name}; detail: #{e.detail}"
end

