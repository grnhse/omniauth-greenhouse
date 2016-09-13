module OmniAuth
  module Strategies
    class Greenhouse < OmniAuth::Strategies::OAuth2
      option :name, 'greenhouse'
      option :client_options, { :site => "https://api.greenhouse.io" }
    end
  end
end
