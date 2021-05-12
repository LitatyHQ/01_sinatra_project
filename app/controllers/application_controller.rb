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

  helpers do
    def logged_in? 
      !!session[:user_id] 
    end
  end

  get '/appointments/new' do
    erb :'/appointments/new'
  end

  get '/appointments/login' do
    erb :'/appointments/login'
  end

  get '/welcome' do
    erb :'/welcome'
  end

end
