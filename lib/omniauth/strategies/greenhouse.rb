module OmniAuth
  module Strategies
    class Greenhouse < OmniAuth::Strategies::OAuth2
      option :name, 'greenhouse'
      option :client_options, { :site => "https://api.greenhouse.io" }
    end

    # For compatibility with omniauth-oauth2 >= 1.4
    # Ref:
    # https://github.com/omniauth/omniauth-oauth2/commit/26152673224aca5c3e918bcc83075dbb0659717f
    # https://github.com/omniauth/omniauth-oauth2/pull/70
    def callback_url
      full_host + script_name + callback_path
    end
  end
end
