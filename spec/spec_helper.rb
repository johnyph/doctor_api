require 'rubygems'
require 'bundler'

Bundler.setup(:default, :test)

require 'sinatra'
require 'rspec'
require 'rack/test'

# set test environment
Sinatra::Base.set :environment, :test
Sinatra::Base.set :run, false
Sinatra::Base.set :raise_errors, true
Sinatra::Base.set :logging, false


Dir.glob(File.join(File.dirname(__FILE__), '../app', '{helpers,models,routes}', "*.rb")){ |file| require file}

RSpec.configure do |config|
  # reset database before each example is run
  #config.before(:each) { DataMapper.auto_migrate! }
end