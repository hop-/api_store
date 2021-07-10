module ApiErrors
  class NotFound < SingleError
    def initialize(messasge, path)
      super.initialize('not-found', 404, message, "#{path}-not-found", {path: path})
    end
  end
end