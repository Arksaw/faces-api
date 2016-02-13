require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FacesApi
  class Application < Rails::Application

    Dotenv::Railtie.load

    config.paperclip_defaults = {
      :storage => :s3,
      :s3_region => ENV['AWS_REGION'],
      :s3_credentials => {
        :bucket => ENV['S3_BUCKET_NAME'],
        :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
      }
    }

    config.active_record.raise_in_transactional_callbacks = true
  end
end
