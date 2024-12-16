require 'sinatra'
require 'sinatra/json'
require './controllers/auths_controller'

class App < Sinatra::Base
  # Mount controllers
  use AuthsController

  # Root route
  get '/' do
    json message: 'Welcome to the Sinatra App!'
  end
end

set :bind, '0.0.0.0'
set :port, ENV['PORT'] || 3000
