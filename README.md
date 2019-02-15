# Greenhouse

Integrate with Greenhouse via OAuth 2.0

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-greenhouse'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-greenhouse

## Usage

**IMPORTANT CHANGE: Due to updates made to omniauth-oauth2 gem, you must  specify $'omniauth-oauth2', '~> 1.3.1' in your Gemfile. Be aware this may affect other dependencies**


It's easy to integrate with Greenhouse using the OmniAuth gem.

If you aren't currently a Greenhouse customer, the first step is to reach out to our Partnerships team at partners@greenhouse.io to request a CLIENT_KEY and CLIENT_SECRET.

Unfortunately, there is no self-service mechanism to register your application.  When you send a request to register
your application, you will need to provide:

* Application Name
* Application URL
* Callback URL (using OmniAuth, it will be http://myapp.example.com/auth/greenhouse/callback)
* Small 128x128px Logo to display in the Greenhouse Authorizaiton screen

Once you receive your CLIENT_KEY and CLIENT_SECRET, add this to your config/initializers/omniauth.rb file:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :greenhouse, '<CLIENT_KEY>', '<CLIENT_SECRET>',
           :scope => 'candidates.create candidates.view'
end
```

After this is configured, your users will be able to authorize your application to use their Greenhouse account via:

    http://myapp.example.com/auth/greenhouse

The user will be presented with an authorization screen.  When the user clicks on the 'Authorize' button, they will be
redirected back to your site to the 'Callback URL' you provided during the application registration process.  This
callback URL will look something like:

    http://myapp.example.com/auth/greenhouse/callback

If the user clicked on the 'Authorize' button, you can retrieve the OAuth 2.0 token via:

```ruby
request.env['omniauth.auth']['credentials']['token']
```

If the user clicked on the 'Deny' button, a 'oauth_problem' query parameter will be set with a value of 'user_refused'.
