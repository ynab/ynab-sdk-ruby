=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.youneedabudget.com

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module YNAB
  class Category
    attr_accessor :id

    attr_accessor :category_group_id

    attr_accessor :name

    # Whether or not the category is hidden
    attr_accessor :hidden

    # If category is hidden this is the id of the category group it originally belonged to before it was hidden.
    attr_accessor :original_category_group_id

    attr_accessor :note

    # Budgeted amount in milliunits format
    attr_accessor :budgeted

    # Activity amount in milliunits format
    attr_accessor :activity

    # Balance in milliunits format
    attr_accessor :balance

    # The type of goal, if the cagegory has a goal (TB=Target Category Balance, TBD=Target Category Balance by Date, MF=Monthly Funding)
    attr_accessor :goal_type

    # The month a goal was created
    attr_accessor :goal_creation_month

    # The goal target amount in milliunits
    attr_accessor :goal_target

    # If the goal type is 'TBD' (Target Category Balance by Date), this is the target month for the goal to be completed
    attr_accessor :goal_target_month

    # The percentage completion of the goal
    attr_accessor :goal_percentage_complete

    # Whether or not the category has been deleted.  Deleted categories will only be included in delta requests.
    attr_accessor :deleted

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
        :'category_group_id' => :'category_group_id',
        :'name' => :'name',
        :'hidden' => :'hidden',
        :'original_category_group_id' => :'original_category_group_id',
        :'note' => :'note',
        :'budgeted' => :'budgeted',
        :'activity' => :'activity',
        :'balance' => :'balance',
        :'goal_type' => :'goal_type',
        :'goal_creation_month' => :'goal_creation_month',
        :'goal_target' => :'goal_target',
        :'goal_target_month' => :'goal_target_month',
        :'goal_percentage_complete' => :'goal_percentage_complete',
        :'deleted' => :'deleted'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'category_group_id' => :'String',
        :'name' => :'String',
        :'hidden' => :'BOOLEAN',
        :'original_category_group_id' => :'String',
        :'note' => :'String',
        :'budgeted' => :'Integer',
        :'activity' => :'Integer',
        :'balance' => :'Integer',
        :'goal_type' => :'String',
        :'goal_creation_month' => :'Date',
        :'goal_target' => :'Integer',
        :'goal_target_month' => :'Date',
        :'goal_percentage_complete' => :'Integer',
        :'deleted' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'category_group_id')
        self.category_group_id = attributes[:'category_group_id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'hidden')
        self.hidden = attributes[:'hidden']
      end

      if attributes.has_key?(:'original_category_group_id')
        self.original_category_group_id = attributes[:'original_category_group_id']
      end

      if attributes.has_key?(:'note')
        self.note = attributes[:'note']
      end

      if attributes.has_key?(:'budgeted')
        self.budgeted = attributes[:'budgeted']
      end

      if attributes.has_key?(:'activity')
        self.activity = attributes[:'activity']
      end

      if attributes.has_key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.has_key?(:'goal_type')
        self.goal_type = attributes[:'goal_type']
      end

      if attributes.has_key?(:'goal_creation_month')
        self.goal_creation_month = attributes[:'goal_creation_month']
      end

      if attributes.has_key?(:'goal_target')
        self.goal_target = attributes[:'goal_target']
      end

      if attributes.has_key?(:'goal_target_month')
        self.goal_target_month = attributes[:'goal_target_month']
      end

      if attributes.has_key?(:'goal_percentage_complete')
        self.goal_percentage_complete = attributes[:'goal_percentage_complete']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @category_group_id.nil?
        invalid_properties.push('invalid value for "category_group_id", category_group_id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @hidden.nil?
        invalid_properties.push('invalid value for "hidden", hidden cannot be nil.')
      end

      if @note.nil?
        invalid_properties.push('invalid value for "note", note cannot be nil.')
      end

      if @budgeted.nil?
        invalid_properties.push('invalid value for "budgeted", budgeted cannot be nil.')
      end

      if @activity.nil?
        invalid_properties.push('invalid value for "activity", activity cannot be nil.')
      end

      if @balance.nil?
        invalid_properties.push('invalid value for "balance", balance cannot be nil.')
      end

      if @goal_type.nil?
        invalid_properties.push('invalid value for "goal_type", goal_type cannot be nil.')
      end

      if @goal_creation_month.nil?
        invalid_properties.push('invalid value for "goal_creation_month", goal_creation_month cannot be nil.')
      end

      if @goal_target.nil?
        invalid_properties.push('invalid value for "goal_target", goal_target cannot be nil.')
      end

      if @goal_target_month.nil?
        invalid_properties.push('invalid value for "goal_target_month", goal_target_month cannot be nil.')
      end

      if @goal_percentage_complete.nil?
        invalid_properties.push('invalid value for "goal_percentage_complete", goal_percentage_complete cannot be nil.')
      end

      if @deleted.nil?
        invalid_properties.push('invalid value for "deleted", deleted cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @category_group_id.nil?
      return false if @name.nil?
      return false if @hidden.nil?
      return false if @note.nil?
      return false if @budgeted.nil?
      return false if @activity.nil?
      return false if @balance.nil?
      return false if @goal_type.nil?
      goal_type_validator = EnumAttributeValidator.new('String', ['TB', 'TBD', 'MF'])
      return false unless goal_type_validator.valid?(@goal_type)
      return false if @goal_creation_month.nil?
      return false if @goal_target.nil?
      return false if @goal_target_month.nil?
      return false if @goal_percentage_complete.nil?
      return false if @deleted.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] goal_type Object to be assigned
    def goal_type=(goal_type)
      validator = EnumAttributeValidator.new('String', ['TB', 'TBD', 'MF'])
      unless validator.valid?(goal_type)
        fail ArgumentError, 'invalid value for "goal_type", must be one of #{validator.allowable_values}.'
      end
      @goal_type = goal_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          category_group_id == o.category_group_id &&
          name == o.name &&
          hidden == o.hidden &&
          original_category_group_id == o.original_category_group_id &&
          note == o.note &&
          budgeted == o.budgeted &&
          activity == o.activity &&
          balance == o.balance &&
          goal_type == o.goal_type &&
          goal_creation_month == o.goal_creation_month &&
          goal_target == o.goal_target &&
          goal_target_month == o.goal_target_month &&
          goal_percentage_complete == o.goal_percentage_complete &&
          deleted == o.deleted
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, category_group_id, name, hidden, original_category_group_id, note, budgeted, activity, balance, goal_type, goal_creation_month, goal_target, goal_target_month, goal_percentage_complete, deleted].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = YNAB.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
