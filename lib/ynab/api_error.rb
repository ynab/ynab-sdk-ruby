module YNAB
  class ApiError < StandardError
    attr_reader :code, :response_headers, :response_body

    # Usage examples:
    #   ApiError.new
    #   ApiError.new("message")
    #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
    #   ApiError.new(:code => 404, :message => "Not Found")
    def initialize(arg = nil)
      if arg.is_a? Hash
        if arg.key?(:message) || arg.key?('message')
          super(arg[:message] || arg['message'])
        else
          super arg
        end

        arg.each do |key, value|
          if respond_to?("#{key}=")
            send "#{key}=", value
          else
            instance_variable_set "@#{key}", value
          end
        end
      else
        super arg
      end
    end

    def response_body=(value)
      @response_body = value

      begin
        @error_parsed = JSON.parse(value)
      rescue
        @error_parsed = nil
      end
    end

    def id
      (@error_parsed || {}).fetch('error', {})['id']
    end

    def name
      (@error_parsed || {}).fetch('error', {})['name']
    end

    def detail
      (@error_parsed || {}).fetch('error', {})['detail']
    end
  end
end
