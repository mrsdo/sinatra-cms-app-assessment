class ListingsController < ApplicationController

  # GET: NOT LOGGED IN
  get "/listings/view-listings" do
    erb :"/listings/view-listings"
  end

  # GET: /listings asking the server for the data in listing -- done
  get "/listings" do
    # if the user is signed in?
    if signed_in? == true
      # then find the user who's session params = to user_id
      @user = User.find(session[:user_id])
      # finally disply the listing list where user_id = to current user

        @listings = Listing.where(user_id: current_user)
        # binding.pry
        erb :"listings/index.html"

      else

      redirect "/signin"
      end
  end

  # GET: /listings/new -- done
  get "/listings/new" do
    if signed_in?
      @user = User.find_by(id: session[:user_id])
      erb :"/listings/new.html"
    else
      redirect "/signin"
    end
  end

  # POST: /listings --- done
  post "/listings" do
    # raise params.inspect
    #params {"name"=>"raise params inspect"}
    if signed_in?
      @user = User.find(session[:user_id])
      # binding.pry

      if params[:name].empty?
        redirect "/listings/new"
      else
        @user = User.find_by(:id => session[:user_id])
        # create new instance of listing
        @listing = Listing.new
        # set the name of name
        @listing.name = params[:name]
        # finally save it
        @listing.user_id = @user.id
        @listing.save

        # listing = Listing.create(name: params[:name], user_id: @user.id)
        # redirect to the show page, HTTP is stateless means instance variable in one action
        # will ever never relates to instance variable in another action
        # ser the listing id to the propeer one
        redirect "/listings"
      end
    else
      redirect "/signin"
    end
  end
  get '/listings/:id' do
    if signed_in?
      # @user = User.find_by(id: session[:user_id])
      @listing = Listing.find(params[:id])
      if @listing && @listing.user == current_user
      # binding.pry
      erb :'/listings/show.html'
    else
      redirect "/signin"
    end
    else
      redirect '/signin'
    end
  end
  # GET: /listings/5
  get "/listings/:id/edit" do
    @user = User.find_by(id: session[:user_id])
    @listing = Listing.find(params[:id])
    if @listing && @listing.user == current_user

    # there is no relation between this line and line 37 it just bcz of redirecting due to design
    # those two values are the end up equals
    erb :"/listings/edit.html"
    else
      redirect "/listings"
    end
  end
  patch '/listings/:id' do
    if signed_in?
      if params[:name].empty?
        redirect "/listings/#{params[:id]}/edit"
      else
        @listing = Listing.find_by_id(params[:id])
        if @listing && @listing.user == current_user
          if @listing.update(:name => params[:name])
            redirect to "/listings/#{@listing.id}"
          else
          redirect to "/listings/#{@listing.id}/edit"
          end
        else
          redirect to '/listings'
        end
      end
    else
      redirect '/signin'
    end
  end

  delete '/listings/:id/delete' do
   if signed_in?
     @user = User.find_by(id: session[:user_id]) if session[:user_id]
     @listing = Listing.find_by_id(params[:id])
     # binding.pry
     if @listing && @listing.user == current_user
       @listing.delete
       redirect '/listings'
     end
   else
     redirect to '/signin'
   end
 end
end
