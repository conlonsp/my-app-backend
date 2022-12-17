class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :address
      t.integer :price
      t.integer :square_feet
      t.integer :agent_id
      t.timestamps
    end
  end
end
