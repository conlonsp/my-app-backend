class Agent < ActiveRecord::Base
  has_many :appointments
  has_many :homes, through: :appointments
end