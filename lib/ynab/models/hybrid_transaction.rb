=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.ynab.com

Generated by: OpenAPI Generator (https://openapi-generator.tech)

=end

require 'date'
require 'time'

module YNAB
  class HybridTransaction
    attr_accessor :id

    # The transaction date in ISO format (e.g. 2016-12-01)
    attr_accessor :date

    # The transaction amount in milliunits format
    attr_accessor :amount

    attr_accessor :memo

    attr_accessor :cleared

    # Whether or not the transaction is approved
    attr_accessor :approved

    attr_accessor :flag_color

    # The customized name of a transaction flag
    attr_accessor :flag_name

    attr_accessor :account_id

    attr_accessor :payee_id

    attr_accessor :category_id

    # If a transfer transaction, the account to which it transfers
    attr_accessor :transfer_account_id

    # If a transfer transaction, the id of transaction on the other side of the transfer
    attr_accessor :transfer_transaction_id

    # If transaction is matched, the id of the matched transaction
    attr_accessor :matched_transaction_id

    # If the transaction was imported, this field is a unique (by account) import identifier.  If this transaction was imported through File Based Import or Direct Import and not through the API, the import_id will have the format: 'YNAB:[milliunit_amount]:[iso_date]:[occurrence]'.  For example, a transaction dated 2015-12-30 in the amount of -$294.23 USD would have an import_id of 'YNAB:-294230:2015-12-30:1'.  If a second transaction on the same account was imported and had the same date and same amount, its import_id would be 'YNAB:-294230:2015-12-30:2'.
    attr_accessor :import_id

    # If the transaction was imported, the payee name that was used when importing and before applying any payee rename rules
    attr_accessor :import_payee_name

    # If the transaction was imported, the original payee name as it appeared on the statement
    attr_accessor :import_payee_name_original

    # If the transaction is a debt/loan account transaction, the type of transaction
    attr_accessor :debt_transaction_type

    # Whether or not the transaction has been deleted.  Deleted transactions will only be included in delta requests.
    attr_accessor :deleted

    # Whether the hybrid transaction represents a regular transaction or a subtransaction
    attr_accessor :type

    # For subtransaction types, this is the id of the parent transaction.  For transaction types, this id will be always be null.
    attr_accessor :parent_transaction_id

    attr_accessor :account_name

    attr_accessor :payee_name

    # The name of the category.  If a split transaction, this will be 'Split'.
    attr_accessor :category_name

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'date' => :'date',
        :'amount' => :'amount',
        :'memo' => :'memo',
        :'cleared' => :'cleared',
        :'approved' => :'approved',
        :'flag_color' => :'flag_color',
        :'flag_name' => :'flag_name',
        :'account_id' => :'account_id',
        :'payee_id' => :'payee_id',
        :'category_id' => :'category_id',
        :'transfer_account_id' => :'transfer_account_id',
        :'transfer_transaction_id' => :'transfer_transaction_id',
        :'matched_transaction_id' => :'matched_transaction_id',
        :'import_id' => :'import_id',
        :'import_payee_name' => :'import_payee_name',
        :'import_payee_name_original' => :'import_payee_name_original',
        :'debt_transaction_type' => :'debt_transaction_type',
        :'deleted' => :'deleted',
        :'type' => :'type',
        :'parent_transaction_id' => :'parent_transaction_id',
        :'account_name' => :'account_name',
        :'payee_name' => :'payee_name',
        :'category_name' => :'category_name'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'date' => :'Date',
        :'amount' => :'Integer',
        :'memo' => :'String',
        :'cleared' => :'TransactionClearedStatus',
        :'approved' => :'Boolean',
        :'flag_color' => :'TransactionFlagColor',
        :'flag_name' => :'String',
        :'account_id' => :'String',
        :'payee_id' => :'String',
        :'category_id' => :'String',
        :'transfer_account_id' => :'String',
        :'transfer_transaction_id' => :'String',
        :'matched_transaction_id' => :'String',
        :'import_id' => :'String',
        :'import_payee_name' => :'String',
        :'import_payee_name_original' => :'String',
        :'debt_transaction_type' => :'String',
        :'deleted' => :'Boolean',
        :'type' => :'String',
        :'parent_transaction_id' => :'String',
        :'account_name' => :'String',
        :'payee_name' => :'String',
        :'category_name' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'memo',
        :'flag_color',
        :'flag_name',
        :'payee_id',
        :'category_id',
        :'transfer_account_id',
        :'transfer_transaction_id',
        :'matched_transaction_id',
        :'import_id',
        :'import_payee_name',
        :'import_payee_name_original',
        :'debt_transaction_type',
        :'parent_transaction_id',
        :'payee_name',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'TransactionSummary'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `YNAB::HybridTransaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `YNAB::HybridTransaction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'memo')
        self.memo = attributes[:'memo']
      end

      if attributes.key?(:'cleared')
        self.cleared = attributes[:'cleared']
      end

      if attributes.key?(:'approved')
        self.approved = attributes[:'approved']
      end

      if attributes.key?(:'flag_color')
        self.flag_color = attributes[:'flag_color']
      end

      if attributes.key?(:'flag_name')
        self.flag_name = attributes[:'flag_name']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'payee_id')
        self.payee_id = attributes[:'payee_id']
      end

      if attributes.key?(:'category_id')
        self.category_id = attributes[:'category_id']
      end

      if attributes.key?(:'transfer_account_id')
        self.transfer_account_id = attributes[:'transfer_account_id']
      end

      if attributes.key?(:'transfer_transaction_id')
        self.transfer_transaction_id = attributes[:'transfer_transaction_id']
      end

      if attributes.key?(:'matched_transaction_id')
        self.matched_transaction_id = attributes[:'matched_transaction_id']
      end

      if attributes.key?(:'import_id')
        self.import_id = attributes[:'import_id']
      end

      if attributes.key?(:'import_payee_name')
        self.import_payee_name = attributes[:'import_payee_name']
      end

      if attributes.key?(:'import_payee_name_original')
        self.import_payee_name_original = attributes[:'import_payee_name_original']
      end

      if attributes.key?(:'debt_transaction_type')
        self.debt_transaction_type = attributes[:'debt_transaction_type']
      end

      if attributes.key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'parent_transaction_id')
        self.parent_transaction_id = attributes[:'parent_transaction_id']
      end

      if attributes.key?(:'account_name')
        self.account_name = attributes[:'account_name']
      end

      if attributes.key?(:'payee_name')
        self.payee_name = attributes[:'payee_name']
      end

      if attributes.key?(:'category_name')
        self.category_name = attributes[:'category_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @date.nil?
      return false if @amount.nil?
      return false if @cleared.nil?
      return false if @approved.nil?
      return false if @account_id.nil?
      debt_transaction_type_validator = EnumAttributeValidator.new('String', ["payment", "refund", "fee", "interest", "escrow", "balanceAdjustment", "credit", "charge", "null"])
      return false unless debt_transaction_type_validator.valid?(@debt_transaction_type)
      return false if @deleted.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["transaction", "subtransaction"])
      return false unless type_validator.valid?(@type)
      return false if @account_name.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] debt_transaction_type Object to be assigned
    def debt_transaction_type=(debt_transaction_type)
      @debt_transaction_type = debt_transaction_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          date == o.date &&
          amount == o.amount &&
          memo == o.memo &&
          cleared == o.cleared &&
          approved == o.approved &&
          flag_color == o.flag_color &&
          flag_name == o.flag_name &&
          account_id == o.account_id &&
          payee_id == o.payee_id &&
          category_id == o.category_id &&
          transfer_account_id == o.transfer_account_id &&
          transfer_transaction_id == o.transfer_transaction_id &&
          matched_transaction_id == o.matched_transaction_id &&
          import_id == o.import_id &&
          import_payee_name == o.import_payee_name &&
          import_payee_name_original == o.import_payee_name_original &&
          debt_transaction_type == o.debt_transaction_type &&
          deleted == o.deleted &&
          type == o.type &&
          parent_transaction_id == o.parent_transaction_id &&
          account_name == o.account_name &&
          payee_name == o.payee_name &&
          category_name == o.category_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, date, amount, memo, cleared, approved, flag_color, flag_name, account_id, payee_id, category_id, transfer_account_id, transfer_transaction_id, matched_transaction_id, import_id, import_payee_name, import_payee_name_original, debt_transaction_type, deleted, type, parent_transaction_id, account_name, payee_name, category_name].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = YNAB.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
