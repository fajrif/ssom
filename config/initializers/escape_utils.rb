require 'escape_utils'

module Rack
  module Utils
    def escape(s)
      EscapeUtils.escape_url(s) if s.is_a? String
    end
  end
end
