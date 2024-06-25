=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.ynab.com

The version of the OpenAPI document: 1.70.0

Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'date'
require 'time'

module YNAB
  class AccountType
    CHECKING = "checking".freeze
    SAVINGS = "savings".freeze
    CASH = "cash".freeze
    CREDIT_CARD = "creditCard".freeze
    LINE_OF_CREDIT = "lineOfCredit".freeze
    OTHER_ASSET = "otherAsset".freeze
    OTHER_LIABILITY = "otherLiability".freeze
    MORTGAGE = "mortgage".freeze
    AUTO_LOAN = "autoLoan".freeze
    STUDENT_LOAN = "studentLoan".freeze
    PERSONAL_LOAN = "personalLoan".freeze
    MEDICAL_DEBT = "medicalDebt".freeze
    OTHER_DEBT = "otherDebt".freeze

    def self.all_vars
      @all_vars ||= [CHECKING, SAVINGS, CASH, CREDIT_CARD, LINE_OF_CREDIT, OTHER_ASSET, OTHER_LIABILITY, MORTGAGE, AUTO_LOAN, STUDENT_LOAN, PERSONAL_LOAN, MEDICAL_DEBT, OTHER_DEBT].freeze
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
      return value if AccountType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #AccountType"
    end
  end
end
