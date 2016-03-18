require 'sinatra/base'

require 'bundler'

Bundler.require

#pull in application helpers, models and routes
Dir.glob(File.join(File.dirname(__FILE__), 'app', '{helpers,models,routes}', "*.rb")){ |file| require file}


#Configure


# maping routes to specific files
map('/users') { run Doctor::Routes::UsersRoute }

