class Home < ActiveRecord::Base
  has_many :appointments
  has_many :agents, through: :appointments
end