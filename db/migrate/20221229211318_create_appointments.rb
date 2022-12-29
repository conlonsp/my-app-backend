class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointmentss do |t|
      t.string :scheduler
      t.string :date
      t.string :time
      t.integer :agent_id
      t.integer :home_id
    end
  end
end
