require 'rubygems'
require 'bundler'

Bundler.setup(:default, :test)

require 'sinatra'
require 'rspec'
require 'rack/test'
require 'factory_girl'
#require 'factories'


# set test environment
Sinatra::Base.set :environment, :test
Sinatra::Base.set :run, false
Sinatra::Base.set :raise_errors, true
Sinatra::Base.set :logging, false

#Dir.glob(File.join(File.dirname(__FILE__), '../app', '{helpers,models,routes}', '*.rb')){ |file| require file }

require File.expand_path('../app.rb', File.dirname(__FILE__))

FactoryGirl.definition_file_paths = %w{./spec/factories}
FactoryGirl.find_definitions


RSpec.configure do |config|
	config.include FactoryGirl::Syntax::Methods		
end
