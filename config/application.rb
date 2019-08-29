require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Wcar
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    Refile.secret_key = 'cc3ffd46fba76b805a62e33cdcb2eac301fe37c7631748efd4dec8105995eea27552752ee297d68bc859c8e8b9a018be4f290b08cc4f405b93047bb3e5b8435a'
  end
end
