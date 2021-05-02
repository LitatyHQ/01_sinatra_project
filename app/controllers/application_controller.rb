require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'secret'
  end

  get "/" do
    erb :welcome
  end

  Helpers do
    def logged_in? #returns a true or false value
      !!sessions[:users_id] #boolean
    end
  end

end
