require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MyRailsProject
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Remove the following line, which includes Webpacker.
    # If you want to use the Asset Pipeline exclusively, you don't need it.
    # config.require_master_key = true

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Disable the asset pipeline, since you won't be using Webpacker.
    config.assets.enabled = false

    # Uncomment the following line if you want to serve static assets from the public folder.
    # config.public_file_server.enabled = true
  end
end
