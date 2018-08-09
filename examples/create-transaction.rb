require 'date'
require 'ynab'

def create_transaction
  access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'
  ynab = YNAB::API.new(access_token)

  budget_id = 'f968197b-2863-not-real-c2406dbe7f0d'
  account_id = 'f6fe07cb-c895-not-real-acfac0b7f026'
  category_id = 'a191ac84-de09-not-real-6c5ed8cfdabe'

  begin
    ynab.transactions.create_transaction(budget_id, {
      transaction: {
        account_id: account_id,
        category_id: category_id,
        date: Date.today,
        payee_name: 'A Test Payee',
        memo: 'I was created through the API',
        cleared: 'Cleared',
        approved: true,
        flag_color: 'Blue',
        amount: 20000
      }
    })
  rescue => e
    puts "ERROR: id=#{e.id}; name=#{e.name}; detail: #{e.detail}"
  end
end

create_transaction
