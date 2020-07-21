ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

#require 'sinatra/base'
#require 'sinatra/reloader'

require_all 'app'
