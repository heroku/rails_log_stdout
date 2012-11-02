require 'rails_log_stdout/rails3'

module RailsLogStdout
  class Railtie < ::Rails::Railtie
    config.before_initialize do
      Rails3.set_logger(config)
    end
  end
end
