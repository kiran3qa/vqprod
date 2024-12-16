require 'sinatra'
require 'sinatra/json'

  # Root route
  get '/' do
    json message: 'Welcome to the Sinatra App!'
  end


set :bind, '0.0.0.0'
set :port, ENV['PORT'] || 3000
