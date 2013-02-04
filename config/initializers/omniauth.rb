Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  #provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET']
  #provider :facebook, ENV['FACEBOOK_ID'], ENV['FACEBOOK_SECRET']
  #provider :identity, on_failed_registration: lambda { |env|
  #  IdentitiesController.action(:new).call(env)
  #}
  #provider :identity, :model => ActsAsBloggable::Identity, :on_failed_registration => ActsAsBloggable::IdentitiesController.action(:new)
  provider :identity, :model => ActsAsBloggable::Identity, on_failed_registration: lambda { |env|
    ActsAsBloggable::IdentitiesController.action(:new).call(env)
  }
end