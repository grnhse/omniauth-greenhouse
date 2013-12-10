module OmniAuth
  module Strategies
    class Greenhouse < OmniAuth::Strategies::OAuth2
      option :name, 'greenhouse'
      option :client_options, { :site => "https://app.greenhouse.io" }
    end
  end
end
