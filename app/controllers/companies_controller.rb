class CompaniesController < ApplicationController

  # GET: /companies
  get "/companies" do
    erb :"/companies/index.html"
  end

  # GET: /companies/new
  get "/companies/new" do
    erb :"/companies/new.html"
  end

  # POST: /companies
  post "/companies" do
    redirect "/companies"
  end

  # GET: /companies/5
  get "/companies/:id" do
    erb :"/companies/show.html"
  end

  # GET: /companies/5/edit
  get "/companies/:id/edit" do
    erb :"/companies/edit.html"
  end

  # PATCH: /companies/5
  patch "/companies/:id" do
    redirect "/companies/:id"
  end

  # DELETE: /companies/5/delete
  delete "/companies/:id/delete" do
    redirect "/companies"
  end
end
