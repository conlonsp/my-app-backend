class AddImageUrlToHomes < ActiveRecord::Migration[6.1]
  def change
    add_column :homes, :image_url, :string
  end
end
