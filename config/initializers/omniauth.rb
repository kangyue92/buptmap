Rails.application.config.middleware.use OmniAuth::Builder do
  provider :weibo, '2870345523', 'a9c1a15dd2a77f1e04fd9b89fce5c617'
end