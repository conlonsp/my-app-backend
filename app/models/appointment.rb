class Appointment < ActiveRecord::Base
  belongs_to :agent
  belongs_to :home
end