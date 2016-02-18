class AddImagesToSnapshot < ActiveRecord::Migration[5.0]
  def change
    add_column :snapshots, :images, :json
  end
end
