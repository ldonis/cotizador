class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.string :name
      t.string :unit
      t.datetime :deleted_at, index: true

      t.timestamps
    end
  end
end
