require 'rails_log_stdout/rails3'

module RailsLogStdout
  class Railtie < ::Rails::Railtie
    initializer "rails_log_stdout.initialize_logger", :before => :initialize_logger do |app|
      Rails3.set_logger(app.config)
    end
  end
end
