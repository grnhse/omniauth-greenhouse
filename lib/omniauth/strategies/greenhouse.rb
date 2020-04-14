module OmniAuth
  module Strategies
    class Greenhouse < OmniAuth::Strategies::OAuth2
      option :name, 'greenhouse'
      option :client_options, { :site => "https://api.greenhouse.io" }
    end

    # Override callback URL for compatibility with omniauth-oauth2 >= 1.4,
    #   which by default passes the entire URL of the callback, including
    #   query parameters. Greenhouse fails validation because that doesn't match the
    #   registered callback as required in the Oauth 2.0 spec.
    # Refs:
    # https://tools.ietf.org/html/rfc6749#section-4.1.3
    # https://github.com/omniauth/omniauth-oauth2/commit/26152673224aca5c3e918bcc83075dbb0659717f
    # https://github.com/omniauth/omniauth-oauth2/pull/70
    def callback_url
      options[:redirect_uri] || (full_host + script_name + callback_path)
    end
  end
end
