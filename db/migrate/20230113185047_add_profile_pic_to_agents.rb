class AddProfilePicToAgents < ActiveRecord::Migration[6.1]
  def change
    add_column :agents, :profile_pic, :string
  end
end
