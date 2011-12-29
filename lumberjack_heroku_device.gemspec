# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "lumberjack_heroku_device/version"

Gem::Specification.new do |s|
  s.name        = "lumberjack_heroku_device"
  s.version     = LumberjackHerokuDevice::VERSION
  s.authors     = ["Tony Coconate"]
  s.email       = ["me@tonycoconate.com"]
  s.homepage    = ""
  s.summary     = %q{A logging device for the Lumberjack gem that writes log entries to Heroku's logging system.}
  s.description = %q{A logging device for the Lumberjack gem that writes log entries to Heroku's logging system.}

  s.rubyforge_project = "lumberjack_heroku_device"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.has_rdoc = true
  s.rdoc_options = ["--charset=UTF-8", "--main", "README.rdoc"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.add_dependency "lumberjack", "~>1.0"
end
