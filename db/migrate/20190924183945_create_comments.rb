class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :note
      t.references :commentable, polymorphic: true
      t.timestamps
    end
  end
end
