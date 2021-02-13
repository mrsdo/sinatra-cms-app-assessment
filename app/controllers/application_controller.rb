# frozen_string_literal: true

# Application Controller
require './config/environment'

class ApplicationController < Sinatra::Base
  # tells controller where to find views and public directory
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    # enable app to use sessions keyword to access session hash
    enable :sessions
    set :session_secret, 'session_cookie_encryption'
  end

  # Helper
  helpers do
    def logged_in?
      # check if current_user variable is set
      # use session to determine the definition of being logged in
      !!current_user
    end

    def current_user
      User.find_by(id: session[:user_id])
    end
  end
end
