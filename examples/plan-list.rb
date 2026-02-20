require 'ynab'

access_token = ENV['YNAB_ACCESS_TOKEN']
ynab = YNAB::API.new(access_token)

begin
  puts 'Fetching plans...'

  plan_response = ynab.plans.get_plans
  plans = plan_response.data.budgets

  puts '==========='
  puts 'PLAN LIST'
  puts '==========='

  plans.each do |plan|
    puts "[id: #{plan.id}, name: #{plan.name}]"
  end
rescue YNAB::ApiError => e
  puts "ERROR: id=#{e.id}; name=#{e.name}; detail: #{e.detail}"
end
