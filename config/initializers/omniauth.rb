TWITTER_KEY = Rails.application.credentials[Rails.env.to_sym][:twitter][:twitter_api_key]
TWITTER_SECRET = Rails.application.credentials[Rails.env.to_sym][:twitter][:twitter_api_secret]

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, TWITTER_KEY, TWITTER_SECRET, callback_url: "http://127.0.0.1:3000/api/v1/auth/twitter/callback"
end