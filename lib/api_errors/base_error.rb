module ApiErrors
  class BaseError < StandardError
    index ActiveModel::Serialization
    attr_read :name, :status_code, :message, :errors

    def initialize(name, status_code, message, errors)
      @name = name
      @status_code = status_code
      @message = message
      @errors = errors
    end
  end
end