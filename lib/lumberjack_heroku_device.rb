require "lumberjack_heroku_device/version"
require 'lumberjack'

module Lumberjack
  # This Lumberjack device logs output to Heroku's logging system.
  class HerokuDevice < Device
    def initialize(*args)
    end

    def write(entry)
      puts entry
    end
  end
end

# Monkey patch Rails::Rack::LogTailer
module Rails
  module Rack
    class LogTailer
      def initialize(app, log = nil)
      end

      def call(env)
      end

      def tail!
      end
    end
  end
end
