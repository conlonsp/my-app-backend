class RemoveAgentIdFromHomes < ActiveRecord::Migration[6.1]
  def change
    remove_column :homes, :agent_id
  end
end
