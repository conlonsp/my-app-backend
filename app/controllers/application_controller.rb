require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/homes" do
    homes = Home.all
    homes.to_json(include: [:appointments, :agents])
  end

  get "/agents" do
    agents = Agent.all
    agents.to_json(include: [:homes, :appointments])
  end

  get "/appointments" do
    appointments = Appointment.all
    appointments.to_json
  end

  post "/homes" do
    home = Home.create(
      address: params[:address],
      price: params[:price],
      square_feet: params[:square_feet],
      agent_id: params[:agent_id]
    )
    home.to_json
  end

  post "/agents" do
    agent = Agent.create(
      name: params[:name],
      brokerage: params[:brokerage],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    agent.to_json
  end

  post "/appointments" do
    appointment = Appointment.create(
      scheduler: params[:scheduler],
      time: params[:time],
      agent_id: params[:agent_id],
      home_id: params[:home_id]
    )
    appointment.to_json
  end

  patch "/homes/:id" do
    home = Home.find(params[:id])
    home.update(
      address: params[:address],
      price: params[:price],
      square_feet: params[:square_feet],
      agent_id: params[:agent_id]
    )
    home.to_json
  end

  # patch "/agents/:id" do
  #   agent = Agent.find(params[:id])
  #   agent.update(
  #     name: params[:name],
  #     brokerage: params[:brokerage],
  #     email: params[:email],
  #     phone_number: params[:phone_number]
  #   )
  #   agent.to_json
  # end

  # patch "/appointments" do
  #   appointment = Appointment.find(params[:id])
  #   appointment.update(
  #     scheduler: params[:scheduler],
  #     time: params[:time],
  #     agent_id: params[:agent_id],
  #     home_id: params[:home_id]
  #   )
  #   appointment.to_json
  # end

  delete "/homes/:id" do
    home = Home.find(params[:id])
    home.destroy
    home.to_json
  end

  delete "/agents/:id" do
    agent = Agent.find(params[:id])
    agent.destroy
    agent.to_json
  end

  delete "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.destroy
    appointment.to_json
  end

end
