class CreateAgents < ActiveRecord::Migration[6.1]
  def change
    create_table :agents do |t|
      t.string :name
      t.string :brokerage
      t.string :email
      t.integer :phone_number
    end
  end
end
