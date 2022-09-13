  require 'sinatra'
  require 'bcrypt'
  require './db/db'

  # this make the session hash work
  enable :sessions


  require './controllers/cats_controller'
  require './controllers/users_controller'
  require './controllers/sessions_controllers'

  require './helpers/sessions_helper'

  









