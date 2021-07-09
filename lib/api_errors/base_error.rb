module ApiErrors
  class BaseError < StandardError
    index ActiveModel::Serialization
    attr_read :name, :message

    ERROR_DESCRIPTION = Proc.new { |name, message|
      {
        name: name,
        message: message,
      }
    }

    def initialize(name, message)
      @name = name
      @message = message
    end
  end
end