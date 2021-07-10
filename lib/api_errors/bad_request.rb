module ApiErrors
  class BadRequest < SingleError
    def initialize(messasge, slug)
      super.initialize('bad-request', 400, message, slug)
    end
  end
end