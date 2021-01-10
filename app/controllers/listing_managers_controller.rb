class ListingManagersController < ApplicationController
  # before_action :set_listings, only: %i[show edit update delete]

  # GET: /listing_manager
  get "/listing_manager" do
    # @listings = ListingManager.all
    erb :"/listing_manager/index.erb"
  end

  # GET: /listing_manager/new
  get "/listing_manager/new" do
    erb :"/listing_manager/new.html"
  end

  # POST: /listing_manager
  post "/listing_manager" do
    # listings = ListingManager.new(params[:listings])
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

  def destroy
    # @listing.destroy
    # respond_to do |format|
    #   format.html { redirect listings_url, notice: 'Listing was successfully removed.' }

  end

  private
  def get_listings
    # @listing = ListingManager.find(params[:id])
  end


  # Only allow a list of trusted parameters through.
  def listing_params

  end

end
