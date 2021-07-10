module ApiErrors
  class SingleError < BaseError
    def initialize(name, status_code, message, slug, details = {})
      initialize(name,
        status_code,
        message,
        [{
          message: message,
          slug: slug,
          details: details,
        }])
    end
  end
end