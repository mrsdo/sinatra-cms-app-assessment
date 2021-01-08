require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :start
  end

  # GET: /listing_manager
  get "/listing_manager" do
    erb :"/listing_manager/index.html"
  end

end
