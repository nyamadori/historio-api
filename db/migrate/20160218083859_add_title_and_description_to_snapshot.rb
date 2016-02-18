class AddTitleAndDescriptionToSnapshot < ActiveRecord::Migration[5.0]
  def change
    add_column :snapshots, :title, :string
    add_column :snapshots, :description, :text
  end
end
