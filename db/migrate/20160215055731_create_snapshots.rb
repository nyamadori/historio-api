class CreateSnapshots < ActiveRecord::Migration[5.0]
  def change
    create_table :snapshots do |t|
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
