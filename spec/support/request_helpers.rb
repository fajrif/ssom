module Requests
  module JsonHelpers
    def json
      @json ||= JSON.parse(response.body)
    end

    def json_parse(obj)
      JSON.parse(obj.to_json)
    end
  end
end
