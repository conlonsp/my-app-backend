class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/homes" do
    # { message: "Good luck with your project!" }.to_json
    homes = Home.all
    homes.to_json
  end

end
