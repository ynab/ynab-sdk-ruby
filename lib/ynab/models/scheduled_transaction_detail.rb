=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.ynab.com

Generated by: OpenAPI Generator (https://openapi-generator.tech)

=end

require 'date'
require 'time'

module YNAB
  class ScheduledTransactionDetail
    attr_accessor :id

    # The first date for which the Scheduled Transaction was scheduled.
    attr_accessor :date_first

    # The next date for which the Scheduled Transaction is scheduled.
    attr_accessor :date_next

    attr_accessor :frequency

    # The scheduled transaction amount in milliunits format
    attr_accessor :amount

    attr_accessor :memo

    attr_accessor :flag_color

    # The customized name of a transaction flag
    attr_accessor :flag_name

    attr_accessor :account_id

    attr_accessor :payee_id

    attr_accessor :category_id

    # If a transfer, the account_id which the scheduled transaction transfers to
    attr_accessor :transfer_account_id

    # Whether or not the scheduled transaction has been deleted.  Deleted scheduled transactions will only be included in delta requests.
    attr_accessor :deleted

    attr_accessor :account_name

    attr_accessor :payee_name

    # The name of the category.  If a split scheduled transaction, this will be 'Split'.
    attr_accessor :category_name

    # If a split scheduled transaction, the subtransactions.
    attr_accessor :subtransactions

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
        :'date_first' => :'date_first',
        :'date_next' => :'date_next',
        :'frequency' => :'frequency',
        :'amount' => :'amount',
        :'memo' => :'memo',
        :'flag_color' => :'flag_color',
        :'flag_name' => :'flag_name',
        :'account_id' => :'account_id',
        :'payee_id' => :'payee_id',
        :'category_id' => :'category_id',
        :'transfer_account_id' => :'transfer_account_id',
        :'deleted' => :'deleted',
        :'account_name' => :'account_name',
        :'payee_name' => :'payee_name',
        :'category_name' => :'category_name',
        :'subtransactions' => :'subtransactions'
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
        :'date_first' => :'Date',
        :'date_next' => :'Date',
        :'frequency' => :'String',
        :'amount' => :'Integer',
        :'memo' => :'String',
        :'flag_color' => :'TransactionFlagColor',
        :'flag_name' => :'String',
        :'account_id' => :'String',
        :'payee_id' => :'String',
        :'category_id' => :'String',
        :'transfer_account_id' => :'String',
        :'deleted' => :'Boolean',
        :'account_name' => :'String',
        :'payee_name' => :'String',
        :'category_name' => :'String',
        :'subtransactions' => :'Array<ScheduledSubTransaction>'
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
        :'payee_name',
        :'category_name',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'ScheduledTransactionSummary'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `YNAB::ScheduledTransactionDetail` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `YNAB::ScheduledTransactionDetail`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'date_first')
        self.date_first = attributes[:'date_first']
      end

      if attributes.key?(:'date_next')
        self.date_next = attributes[:'date_next']
      end

      if attributes.key?(:'frequency')
        self.frequency = attributes[:'frequency']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'memo')
        self.memo = attributes[:'memo']
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

      if attributes.key?(:'deleted')
        self.deleted = attributes[:'deleted']
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

      if attributes.key?(:'subtransactions')
        if (value = attributes[:'subtransactions']).is_a?(Array)
          self.subtransactions = value
        end
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
      return false if @date_first.nil?
      return false if @date_next.nil?
      return false if @frequency.nil?
      frequency_validator = EnumAttributeValidator.new('String', ["never", "daily", "weekly", "everyOtherWeek", "twiceAMonth", "every4Weeks", "monthly", "everyOtherMonth", "every3Months", "every4Months", "twiceAYear", "yearly", "everyOtherYear"])
      return false unless frequency_validator.valid?(@frequency)
      return false if @amount.nil?
      return false if @account_id.nil?
      return false if @deleted.nil?
      return false if @account_name.nil?
      return false if @subtransactions.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] frequency Object to be assigned
    def frequency=(frequency)
      @frequency = frequency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          date_first == o.date_first &&
          date_next == o.date_next &&
          frequency == o.frequency &&
          amount == o.amount &&
          memo == o.memo &&
          flag_color == o.flag_color &&
          flag_name == o.flag_name &&
          account_id == o.account_id &&
          payee_id == o.payee_id &&
          category_id == o.category_id &&
          transfer_account_id == o.transfer_account_id &&
          deleted == o.deleted &&
          account_name == o.account_name &&
          payee_name == o.payee_name &&
          category_name == o.category_name &&
          subtransactions == o.subtransactions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, date_first, date_next, frequency, amount, memo, flag_color, flag_name, account_id, payee_id, category_id, transfer_account_id, deleted, account_name, payee_name, category_name, subtransactions].hash
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
