module OmniAuth
  module Strategies
    class GreenhouseStrategy < OmniAuth::Strategies::OAuth2

      SITE = 'http://localhost-app.greenhouse.io:3000'

      option :name, 'greenhouse'
      option :client_options, { :site => SITE }

      def self.hello_world
        puts 'Hello, world!'
      end
    end
  end
end
