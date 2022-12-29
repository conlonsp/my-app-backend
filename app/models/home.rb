class Home < ActiveRecord::Base
  belongs_to :agent
  has_many :appointments
end