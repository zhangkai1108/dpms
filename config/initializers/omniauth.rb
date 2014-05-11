Rails.application.config.middleware.use OmniAuth::Builder do
  provider :identity,:field=>[:email,:loginName]
end