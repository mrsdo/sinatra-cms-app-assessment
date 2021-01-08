class ListingManagersController < ApplicationController

  # GET: /listing_manager
  get "/listing_manager" do
    @listings = ListingManager.all
    erb :"/listing_manager/index.html"
  end

  # GET: /listing_manager/new
  get "/listing_manager/new" do
    erb :"/listing_manager/new.html"
  end

  # POST: /listing_manager
  post "/listing_manager" do
    redirect "/listing_manager"
  end

  # GET: /listing_manager/5
  get "/listing_manager/:id" do
    erb :"/listing_manager/show.html"
  end

  # GET: /listing_manager/5/edit
  get "/listing_manager/:id/edit" do
    erb :"/listing_manager/edit.html"
  end

  # PATCH: /listing_manager/5
  patch "/listing_manager/:id" do
    redirect "/listing_manager/:id"
  end

  # DELETE: /listing_manager/5/delete
  delete "/listing_manager/:id/delete" do
    redirect "/listing_manager"
  end


end
