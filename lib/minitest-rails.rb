require "rails"

module MiniTest
  module Rails
    VERSION = "0.0.2"
    class Railtie < ::Rails::Railtie
      config.app_generators.integration_tool :minitest
      config.app_generators.test_framework   :minitest, :fixture => true
      config.app_generators.fallbacks[:minitest] = :test_unit

      rake_tasks do
        load "minitest/rails/tasks/minitest.rake"
      end
    end
  end
end