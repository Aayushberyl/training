Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :github , 'b85ed8540801ea2af559', '50780a8ea142cee8f0d56519bade36016d7c6942'
end
