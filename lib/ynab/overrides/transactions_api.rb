require 'uri'
require 'ynab/api/deprecated_api'

module YNAB
  module Overrides
    class TransactionsApi < YNAB::TransactionsApi
      def initialize(api_client = ApiClient.default)
        super(api_client)
      end
      # Create a single transaction or multiple transactions
      # Creates a single transaction or multiple transactions.  If you provide a body containing a 'transaction' object, a single transaction will be created and if you provide a body containing a 'transactions' array, multiple transactions will be created.
      # @param budget_id The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget)
      # @param data The transaction or transactions to create
      # @param [Hash] opts the optional parameters
      # @return [SaveTransactionsResponse]
      def create_transactions(budget_id, data, opts = {})
        data, _status_code, _headers = create_transaction_with_http_info(budget_id, data, opts)
        data
      end

      # Bulk create transactions
      # Creates multiple transactions
      # @param budget_id The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget)
      # @param transactions The list of transactions to create
      # @param [Hash] opts the optional parameters
      # @return [BulkResponse]
      def bulk_create_transactions(budget_id, transactions, opts = {})
        DeprecatedApi.new(@api_client).bulk_create_transactions(budget_id, transactions, opts)
      end
    end
  end
end
