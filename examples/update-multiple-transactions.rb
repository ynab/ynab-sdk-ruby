require 'ynab'

access_token = ENV['YNAB_ACCESS_TOKEN']
ynab = YNAB::API.new(access_token)

budget_id = ENV['YNAB_BUDGET_ID']

begin
  # Fetch all unapproved transactions and update them all as approved
  unapproved_transaction_data = ynab.transactions.get_transactions(budget_id, { type: 'unapproved' }).data

  data = unapproved_transaction_data.clone
  data.transactions.each do |t|
    t.approved = true
  end

  ynab.transactions.update_transactions(budget_id, update_data)
rescue YNAB::ApiError => e
  puts "ERROR: id=#{e.id}; name=#{e.name}; detail: #{e.detail}"
end
