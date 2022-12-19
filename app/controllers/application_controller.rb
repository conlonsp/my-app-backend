require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/homes" do
    homes = Home.all
    homes.to_json(include: :agent)
  end

  post "/homes" do
    home = Home.create(
      address: params[:address],
      price: params[:price],
      square_feet: params[:square_feet]
    )
    home.to_json
  end

  patch "/homes/:id" do
    home = Home.find(params[:id])
    binding.pry
    home.update(
      address: params[:address],
      price: params[:price],
      square_feet: params[:square_feet]
    )
    home.to_json
  end

  delete "/homes/:id" do
    home = Home.find(params[:id])
    home.destroy
    home.to_json
  end
end
