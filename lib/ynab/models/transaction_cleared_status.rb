=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.ynab.com

Generated by: OpenAPI Generator (https://openapi-generator.tech)

=end

require 'date'
require 'time'

module YNAB
  class TransactionClearedStatus
    CLEARED = "cleared".freeze
    UNCLEARED = "uncleared".freeze
    RECONCILED = "reconciled".freeze

    def self.all_vars
      @all_vars ||= [CLEARED, UNCLEARED, RECONCILED].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if TransactionClearedStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #TransactionClearedStatus"
    end
  end
end
