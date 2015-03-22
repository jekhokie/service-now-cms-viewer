require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

Bundler.require(:default, Rails.env)

module ServiceNowCmsViewer
  class Application < Rails::Application
    config.autoload_paths << Rails.root.join('lib')
  end
end
