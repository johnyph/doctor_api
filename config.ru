require 'bundler/setup'
Bundler.require(:default)


require './app'

run Doctor::App

# maping routes to specific files
map('/users') { run Doctor::Routes::UsersRoute }


