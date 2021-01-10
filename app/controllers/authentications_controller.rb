class AuthenticationsController < ApplicationController

  # GET: /authentications
  get "/authentications" do
    erb :"/authentications/index.erb"
  end

  # GET: /authentications/new
  get "/authentications/new" do
    erb :"/authentications/new.html"
  end

  # POST: /authentications
  post "/authentications" do
    redirect "/authentications"
  end

  # GET: /authentications/5
  get "/authentications/:id" do
    erb :"/authentications/show.html"
  end

  # GET: /authentications/5/edit
  get "/authentications/:id/edit" do
    erb :"/authentications/edit.html"
  end

  # PATCH: /authentications/5
  patch "/authentications/:id" do
    redirect "/authentications/:id"
  end

  # DELETE: /authentications/5/delete
  delete "/authentications/:id/delete" do
    redirect "/authentications"
  end
end
