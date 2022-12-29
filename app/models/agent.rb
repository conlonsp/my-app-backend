class Agent < ActiveRecord::Base
  has_many :homes
  has_many :appointments
end