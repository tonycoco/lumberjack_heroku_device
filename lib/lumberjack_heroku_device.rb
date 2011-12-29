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
        @app = app
      end

      def call(env)
        response = @app.call(env)
        tail!
        response
      end

      def tail!
        $stdout.print "Testing... 1. 2. 3."
      end
    end
  end
end
