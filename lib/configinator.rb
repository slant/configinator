require "configinator/version"

module Configinator
  module Rails
    class Railtie < ::Rails::Railtie

      config.before_configuration do
        app_config = {}
        begin
          app_config = YAML.load_file(File.join("config", "app_config.yml"))[::Rails.env].with_indifferent_access
        rescue
          puts "\nWARNING: It appears as though you are missing the config/app_config.yml file.\n\n"
        end
        config.app = app_config
      end

    end
  end
end
