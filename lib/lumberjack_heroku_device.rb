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
