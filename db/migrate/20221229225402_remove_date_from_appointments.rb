class RemoveDateFromAppointments < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :date, :string
  end
end
